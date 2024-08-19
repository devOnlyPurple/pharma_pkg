// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:http/http.dart' as http;
import 'package:iconsax/iconsax.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../classe/connect/connect_check.dart';
import '../../classe/localization/locales.dart';
import '../../helpers/constants/constant.dart';
import '../../models/pharmas.dart';
import '../../models/position_lat_long.dart';
import '../../widget/loading_widget.dart';

class PharmacieDetails extends StatefulWidget {
  PharmacieDetails(
      {super.key, required this.unePharmacie, required this.devicePosition});
  Pharmas? unePharmacie;

  PositionLatLong? devicePosition;
  @override
  State<PharmacieDetails> createState() => _PharmacieDetailsState();
}

class _PharmacieDetailsState extends State<PharmacieDetails> {
  String contact = "";
  // var urldefault =
  //     " https://eu2.contabostorage.com/ab7d17465f7c4b4e9ea50fae12fa229d:dev/pharmacies/default_pharma.jpg";
//telephone
  void _launchCall(String phoneNumber) async {
    String url = 'tel:$phoneNumber';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Impossible de lancer $url';
    }
  }

  // link map
  _launchMap(Uri url) async {
    await launchUrl(url);
  }

  final ConnectivityChecker _connectivity = ConnectivityChecker();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    if (widget.unePharmacie!.contact2!.isNotEmpty) {
      contact =
          "${widget.unePharmacie!.contact1!.replaceAll(' ', '')} / ${widget.unePharmacie!.contact2!.replaceAll(' ', '')}";
    } else {
      contact = widget.unePharmacie!.contact1!.replaceAll(' ', '');
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kWhite,
      appBar: AppBar(
        backgroundColor: kWhite,
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 18,
          ),
        ),
        actions: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
              // Navigator.pushReplacement(
              //     context,
              //     MaterialPageRoute(
              //         builder: (_) => DoctorListPage(
              //               userResponse: widget.userResponse,
              //               data: widget.data,
              //               devicePosition: widget.devicePosition,
              //             )));
            },
            child: Container(
                height: 30, width: 30, child: const Icon(Iconsax.calendar_add)),
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Br10(),
                Center(
                  child: Text(
                    // ignore: prefer_interpolation_to_compose_strings
                    LocaleData.pharmacyForm.getString(context),
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17),
                  ),
                ),
                Br20(),
                Container(
                  height: 250,
                  width: size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      image: DecorationImage(
                          alignment: Alignment.center,
                          image: CachedNetworkImageProvider(
                            widget.unePharmacie!.photo!,
                          ),
                          fit: widget.unePharmacie!.photo!
                                  .contains('default_pharma.jpg')
                              ? BoxFit.fill
                              : BoxFit.cover)),
                ),
                Br20(),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              widget.unePharmacie!.nom!,
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Kprimary),
                            ),
                            Spacer(),
                            InkWell(
                                onTap: () async {
                                  bool isConnect = await _connectivity
                                      .checkInternetConnectivity();
                                  CustomLoading(context,
                                      status: LocaleData.shareLoading
                                          .getString(context));
                                  if (isConnect) {
                                    final url =
                                        Uri.parse(widget.unePharmacie!.photo!);
                                    final response = await http.get(url);
                                    Share.shareXFiles([
                                      XFile.fromData(
                                        response.bodyBytes,
                                        name: widget.unePharmacie!.nom!,
                                        mimeType: 'image/png',
                                      ),
                                    ],
                                        subject: widget.unePharmacie!.nom!,
                                        text:
                                            "${widget.unePharmacie!.nom!}\n\n${LocaleData.phone.getString(context)} : $contact\n\n${LocaleData.adresse.getString(context)} : ${widget.unePharmacie!.adresse!}\n\n${LocaleData.geolocation.getString(context)}: ${widget.unePharmacie!.mapLink!}\n\n${LocaleData.withK.getString(context)} Kondjigbalẽ");
                                    Navigator.pop(context);
                                  } else {
                                    final result = await Share.share(
                                        "${widget.unePharmacie!.nom!}\n\n${LocaleData.phone.getString(context)}: $contact\n\n${LocaleData.adresse.getString(context)} : ${widget.unePharmacie!.adresse!}\n\n${LocaleData.geolocation.getString(context)}: ${widget.unePharmacie!.mapLink!}\n\n${LocaleData.withK.getString(context)} Kondjigbalẽ");
                                    Navigator.pop(context);

                                    if (result.status ==
                                        ShareResultStatus.success) {
                                      // _shareConseil(uneCategorieConseil.keyConseil!);
                                      // Si le partage est réussi, cela signifie que l'utilisateur a appuyé sur le bouton de partage
                                      print(
                                          "L'utilisateur a partagé l'actualité");
                                    }
                                  }
                                },
                                child: Container(
                                  width: 30,
                                  height: 40,
                                  child: Icon(
                                    Icons.share_outlined,
                                    size: 20,
                                  ),
                                )),
                          ],
                        ),
                        Br3(),
                        Text(
                          widget.unePharmacie!.adresse!,
                          style: TextStyle(
                              fontSize: 9, fontWeight: FontWeight.w600),
                        ),
                        Br3(),
                        Text(
                          '${widget.unePharmacie!.distance!} km',
                          style: TextStyle(
                              fontSize: 8.5,
                              fontWeight: FontWeight.w700,
                              color: Ksecondary),
                        ),
                        Br30(),
                        Text(
                          LocaleData.pharmacyCheck.getString(context),
                          softWrap: true,
                          style: TextStyle(
                              fontSize: 8,
                              fontWeight: FontWeight.w700,
                              color: kBlack),
                        ),
                        Br20(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  _launchCall(widget.unePharmacie!.contact1!);
                                },
                                child: Container(
                                    height: 45,
                                    decoration: BoxDecoration(
                                        color: Colors.grey.shade200,
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(width: 15),
                                        SvgPicture.asset(
                                            'assets/icons/appel.svg',
                                            height: 16),
                                        Spacer(
                                          flex: 1,
                                        ),
                                        Text(
                                          widget.unePharmacie!.contact1!,
                                          style: TextStyle(fontSize: 12),
                                        ),
                                        Spacer(
                                          flex: 1,
                                        ),
                                        Icon(Icons.chevron_right_outlined),
                                        SizedBox(width: 15),
                                      ],
                                    )),
                              ),
                            ),
                            if (widget.unePharmacie!.contact2!.isNotEmpty)
                              SizedBox(
                                width: 10,
                              ),
                            if (widget.unePharmacie!.contact2!.isNotEmpty)
                              Expanded(
                                child: InkWell(
                                  onTap: () {
                                    _launchCall(widget.unePharmacie!.contact2!);
                                  },
                                  child: Container(
                                    height: 45,
                                    decoration: BoxDecoration(
                                        color: Colors.grey.shade200,
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(width: 15),
                                        SvgPicture.asset(
                                            'assets/icons/appel.svg',
                                            height: 16),
                                        Spacer(
                                          flex: 1,
                                        ),
                                        Text(widget.unePharmacie!.contact2!,
                                            style: TextStyle(fontSize: 12)),
                                        Spacer(
                                          flex: 1,
                                        ),
                                        Icon(Icons.chevron_right_outlined),
                                        SizedBox(width: 15),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                          ],
                        ),
                        // Br20(),
                        // InkWell(
                        //   onTap: () async {
                        //     final url = Uri.parse(widget.unePharmacie!.photo!);
                        //     final response = await http.get(url);
                        //     Share.shareXFiles([
                        //       XFile.fromData(
                        //         response.bodyBytes,
                        //         name: widget.unePharmacie!.nom!,
                        //         mimeType: 'image/png',
                        //       ),
                        //     ],
                        //         subject: widget.unePharmacie!.nom!,
                        //         text:
                        //             "${widget.unePharmacie!.nom!}\n\nTéléphone.s: $contact\n\nAdresse: ${widget.unePharmacie!.adresse!}\n\nGéolocalisation:${widget.unePharmacie!.mapLink!}\n");
                        //   },
                        //   child: Container(
                        //     height: 45,
                        //     width: size.width,
                        //     decoration: BoxDecoration(
                        //       borderRadius: BorderRadius.circular(10),
                        //       color: Ksecondary.withOpacity(0.3),
                        //     ),
                        //     child: Row(
                        //       children: [
                        //         SizedBox(
                        //           width: 15,
                        //         ),
                        //         Icon(
                        //           Iconsax.share,
                        //           size: 16,
                        //         ),
                        //         SizedBox(
                        //           width: 20,
                        //         ),
                        //         Text(
                        //           LocaleData.sharePharma.getString(context),
                        //           style: TextStyle(
                        //               fontWeight: FontWeight.w500,
                        //               fontSize: 12),
                        //         ),
                        //         Spacer(),
                        //         Icon(Icons.chevron_right_outlined),
                        //         SizedBox(width: 15),
                        //       ],
                        //     ),
                        //   ),
                        // ),
                        Br20(),
                        InkWell(
                          onTap: () {
                            _launchMap(
                                Uri.parse(widget.unePharmacie!.mapLink!));
                          },
                          child: Container(
                            height: 45,
                            width: size.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Kprimary.withOpacity(0.3),
                            ),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 15,
                                ),
                                Icon(
                                  Iconsax.map,
                                  size: 16,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  LocaleData.map.getString(context),
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12),
                                ),
                                Spacer(),
                                Icon(Icons.chevron_right_outlined),
                                SizedBox(width: 15),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
