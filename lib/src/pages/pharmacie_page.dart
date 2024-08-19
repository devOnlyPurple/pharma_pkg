// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pharmacie_pkg/src/classe/connect/connect_check.dart';
import 'package:pharmacie_pkg/src/classe/localization/locales.dart';
import 'package:pharmacie_pkg/src/helpers/constants/api_constant.dart';
import 'package:pharmacie_pkg/src/helpers/constants/constant.dart';
import 'package:pharmacie_pkg/src/helpers/manager/api_repository.dart';
import 'package:pharmacie_pkg/src/helpers/utils/class_utils.dart';

import 'package:pharmacie_pkg/src/models/garde.dart';
import 'package:pharmacie_pkg/src/models/pharmacie_response.dart';
import 'package:pharmacie_pkg/src/models/pharmas.dart';

import 'package:pharmacie_pkg/src/pages/pharmacies/pharma_methode.dart';
import 'package:share_plus/share_plus.dart';

class PharmaPage extends StatefulWidget {
  PharmaPage({super.key, required this.latitude, required this.longitude});
  String? latitude;
  String? longitude;
  @override
  State<PharmaPage> createState() => _PharmaPageState();
}

class _PharmaPageState extends State<PharmaPage> {
  final List<String> tabTitles = ['De garde', 'A proximité'];
  List<Pharmas> listePharma = [];
  List<Pharmas> listePharmaGarde = [];
  List<Pharmas> listprochePharma = [];
  List<Pharmas> filteredList = [];

  late Garde pharmaGARDE = Garde(pharmacieIds: '');
  final ClassUtils classUtils = ClassUtils();
  final storage = FlutterSecureStorage();
  // final ClassUtils _classUtils = ClassUtils();
  int loadingStatus = 0;
  int errorStatus = 0;
  String uIdentifiant = '';
  String jsonString = '';
  late List<int> pharmacyIds;

  double latitude = 0.0;
  double longitude = 0.0;
  FocusNode _searchField = FocusNode();

  final TextEditingController _searching = TextEditingController();
  final ConnectivityChecker _connectivity = ConnectivityChecker();
  Future<void> getPharaList(String latitude, String longitude) async {
    try {
      final Map<String, String> dataMenu = {
        'u_identifiant': 'V--8uOdQVBTgSdig0FB6Mfdt-lWDKXoL',
        "registration_id": 'xxxxxxxxx',
        "lang": 'fr',
        "latMember": latitude,
        "longMember": longitude,
        "device_id": 'xxxxxxx',
        "device_name": 'xxxxxx',
      };

      print('start-api');
      PharmaciesResponse listeMenu = await ApiRepository.listPharma(dataMenu);
      print('end-api');
      if (listeMenu.status == '000') {
        if (mounted) {
          setState(() {
            print('startrecup');

            listePharma = listeMenu.information!.pharmas!;
            loadingStatus = 1;
            listprochePharma = listeMenu.information!.pharmas!;
            listprochePharma.sort((a, b) =>
                double.parse(a.distance!).compareTo(double.parse(b.distance!)));
            pharmaGARDE = listeMenu.information!.garde!;
            jsonString = pharmaGARDE.pharmacieIds!;
            pharmacyIds = jsonDecode(jsonString)
                .map<int>((idString) => int.parse(idString))
                .toList();
            listePharmaGarde = listePharma
                .where((pharmacy) => pharmacyIds.contains(pharmacy.id))
                .toList();

            // proximité
            listePharmaGarde.sort((a, b) =>
                double.parse(a.distance!).compareTo(double.parse(b.distance!)));
            log('proximité');

            errorStatus = 0;
          });
        }
      } else {
        if (mounted) {
          setState(() {
            loadingStatus = 1;
            errorStatus = 0;
          });
        }
        print(
          listeMenu.message,
        );
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          loadingStatus = 1;
          errorStatus = 1;
        });
      }
      debugPrint('une erreur c\'est produite $e');
    }
  }

  Future<void> launchAllfunction() async {
    // varProvider.connectedStatus = 0;
    bool isConnect = await _connectivity.checkInternetConnectivity();
    if (isConnect) {
      getPharaList(widget.latitude!, widget.longitude!);

      // varProvider.connectedStatus = 1;
    } else {
      if (mounted) {
        setState(() {
          loadingStatus = 1;
          errorStatus = 1;
          listePharma = [];
          listePharmaGarde = [];
          listprochePharma = [];
        });
      }
      // varProvider.connectedStatus = 2;
    }
  }

  bool _isSearching = false;
  @override
  void initState() {
    // ConnectivitySettings.init(lookupDuration: const Duration(seconds: 30));
    super.initState();
    launchAllfunction();
  }

  @override
  void dispose() {
    super.dispose();
    _searchField.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: tabTitles.length,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: _isSearching == false,
          bottom: TabBar(
            indicatorColor: Kprimary,
            labelColor: Kprimary,
            labelStyle: TextStyle(fontSize: 11, fontFamily: 'axiformat'),
            tabs: [
              Tab(
                text: LocaleData.pharmacyGarde.getString(context),
              ),
              Tab(
                text: LocaleData.pharmacyProche.getString(context),
              ),
            ],
          ),
          leading: _isSearching == false
              ? InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Icon(
                    Icons.arrow_back_ios_new_rounded,
                    size: 14,
                  ),
                )
              : null,
          title: _isSearching
              ? searchBox(size)
              : Text(
                  LocaleData.pharmacy.getString(context),
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                ),
          actions: [
            if (_isSearching == false)
              InkWell(
                onTap: () {
                  setState(() {
                    _isSearching = true;
                    filteredList = List.from(listePharmaGarde);
                    _searchField.requestFocus();
                  });
                },
                child: Container(
                  width: 30,
                  height: 40,
                  child: Icon(
                    Icons.search_rounded,
                    size: 20,
                  ),
                ),
              ),
            if (_isSearching == false)
              InkWell(
                onTap: () async {
                  try {
                    // Appel de la méthode Share.share pour partager le lien
                    final result = await Share.share(
                        '${LocaleData.sharePharmacieFirstText.getString(context)} ${pharmaGARDE.dateDebut} ${LocaleData.at.getString(context)} ${pharmaGARDE.dateFin} Togo \n\n${WEBSITE}pharmacies-garde \n\n${LocaleData.withK.getString(context)} Kondjigbalẽ');
                    if (result.status == ShareResultStatus.success) {
                      // _shareConseil(uneCategorieConseil.keyConseil!);
                      // Si le partage est réussi, cela signifie que l'utilisateur a appuyé sur le bouton de partage
                      print("L'utilisateur a partagé l'actualité");
                    }
                  } catch (e) {
                    // En cas d'erreur lors du partage
                    print("Erreur lors du partage : $e");
                  }
                },
                child: Container(
                  width: 30,
                  height: 40,
                  child: Icon(
                    Icons.share_outlined,
                    size: 18,
                  ),
                ),
              ),
            if (_isSearching == false)
              InkWell(
                onTap: () async {
                  print(1);
                  setState(() {
                    loadingStatus = 0;
                  });
                  getPharaList(widget.latitude!, widget.longitude!);
                },
                child: Container(
                  width: 30,
                  height: 40,
                  child: Icon(
                    Iconsax.rotate_left,
                    size: 18,
                  ),
                ),
              ),
            if (_isSearching == false)
              SizedBox(
                width: 15,
              ),
          ],
        ),
        // : AppBar(
        //     toolbarHeight: 80,
        //     automaticallyImplyLeading: false,
        //     title: searchBox(size),
        //   ),
        body: TabBarView(
          children:
              _buildTabBarViews(size), // Ajoutez les pages d'onglet réelles ici
        ),
      ),
    );
  }

  List<Widget> _buildTabBarViews(Size size) {
    return [
      SingleChildScrollView(
        child: loadingStatus == 0
            ? Center(
                // Affichez un indicateur de chargement tant que loadingStatus est égal à 0
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 50),
                    CircularProgressIndicator(
                      backgroundColor: Kprimary,
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.grey),
                    ),
                    SizedBox(height: 10),
                    Text(
                      LocaleData.pharmacyLoading.getString(context),
                      style: TextStyle(fontSize: 11),
                    ),
                  ],
                ),
              )
            : Column(
                children: [
                  Br20(),
                  if (errorStatus != 1)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Container(
                        height: 40,
                        width: size.width,
                        decoration: BoxDecoration(
                            color: Ksecondary,
                            borderRadius: BorderRadius.circular(10.5)),
                        child: Center(
                            child: Text(
                          "${LocaleData.pharmacyPeriode.getString(context)} ${pharmaGARDE.dateDebut} ${LocaleData.at.getString(context)} ${pharmaGARDE.dateFin} ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: kWhite,
                              fontSize: 11),
                        )),
                      ),
                    ),
                  Br10(),
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 15.0),
                      child: listpharmaMethode(context, size, listePharmaGarde,
                          _isSearching, filteredList, false, 0)),
                ],
              ),
      ),
      loadingStatus == 0
          ? Center(
              // Affichez un indicateur de chargement tant que loadingStatus est égal à 0
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 50),
                  CircularProgressIndicator(
                    backgroundColor: Kprimary,
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.grey),
                  ),
                  SizedBox(height: 10),
                  Text(LocaleData.pharmacyLoading.getString(context)),
                ],
              ),
            )
          : Container(
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: listpharmaMethode(
                context,
                size,
                listprochePharma,
                _isSearching,
                filteredList,
                true,
                0,
              ))
    ];
  }

  // Widget listpharmaMethode(Size size, List<Pharmas> listePharma) {
  //   listePharma = _isSearching ? filteredList : listePharma;
  //   if (listePharma.isEmpty) {
  //     return Center(
  //       child: EmptyPage(
  //         title: 'Aucune pharmacie trouvée',
  //         asset: 'assets/images/pharma.png',
  //       ),
  //     );
  //   }
  //   return ListView.builder(
  //       shrinkWrap: true,
  //       physics: NeverScrollableScrollPhysics(),
  //       itemCount: listePharma.length,
  //       itemBuilder: (context, index) {
  //         Pharmas unePharmacie = listePharma[index];
  //         return Container(
  //           // margin: EdgeInsets.all(8.0),
  //           padding: EdgeInsets.only(bottom: 8.0, top: 8.0),
  //           height: 90,
  //           width: size.width,
  //           child: InkWell(
  //             onTap: () {
  //               ClassUtils.navigateTo(
  //                   context,
  //                   PharmacieDetails(
  //                     unePharmacie: unePharmacie,
  //                     userResponse: userResponse,
  //                   ));
  //             },
  //             child: Row(
  //               children: [
  //                 Container(
  //                   height: size.width / 6.5,
  //                   width: size.width / 6.5,
  //                   decoration: BoxDecoration(
  //                       borderRadius: BorderRadius.circular(7.5),
  //                       image: DecorationImage(
  //                           image:
  //                               CachedNetworkImageProvider(unePharmacie.photo!),
  //                           fit: BoxFit.cover)),
  //                 ),
  //                 SizedBox(
  //                   width: 16,
  //                 ),
  //                 Expanded(
  //                   child: Column(
  //                     crossAxisAlignment: CrossAxisAlignment.start,
  //                     children: [
  //                       Br5(),
  //                       Text(
  //                         unePharmacie.nom!,
  //                         style: TextStyle(
  //                             fontWeight: FontWeight.w600, fontSize: 14),
  //                       ),
  //                       Br2(),
  //                       Text(
  //                         unePharmacie.adresse!,

  //                         style: TextStyle(fontSize: 11),
  //                         // Optionnel: affiche des points de suspension si le texte dépasse deux lignes
  //                       ),
  //                       Br5(),
  //                       Text(
  //                         '${unePharmacie.distance!} km',
  //                         style: TextStyle(fontSize: 11, color: kBlack),
  //                       ),
  //                     ],
  //                   ),
  //                 )
  //               ],
  //             ),
  //           ),
  //         );
  //       });
  // }

  Widget searchBox(Size size) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Br10(),
          TextFormField(
              focusNode: _searchField,
              style: const TextStyle(
                  fontWeight: FontWeight.w500, fontSize: 14, color: kBlack),
              controller: _searching,
              onChanged: (value) {
                search = value.toLowerCase();
                filterPharmacies();
              },
              decoration: InputDecoration(
                suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _isSearching = false;
                        _searching.clear();
                      });
                    },
                    icon: Icon(Icons.remove_circle_outline_outlined)),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(color: kformFieldBackgroundColor),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(
                    color: kformFieldBackgroundColor,
                  ),
                ),
                fillColor: kformFieldBackgroundColor,
                filled: true,
                border: OutlineInputBorder(
                    // borderSide: new BorderSide(color:Colors.green)
                    ),
                hintText: LocaleData.searchPharmacy.getString(context),
                hintStyle: TextStyle(
                    fontSize: 14.0, color: Colors.grey.withOpacity(0.5)),
                prefixText: ' ',
              )),
        ],
      ),
    );
  }

  String search = "";
  void filterPharmacies() {
    setState(() {
      if (search.isNotEmpty) {
        _isSearching = true;
        filteredList = listePharma
            .where((pharmacy) =>
                pharmacy.nom!.toLowerCase().contains(search.toLowerCase()))
            .toList();
      } else {
        _isSearching = false;
        filteredList = listePharma;
      }
    });
  }

  void procheFilter() {
    setState(() {
      if (search.isNotEmpty) {
        _isSearching = true;
        filteredList = listprochePharma
            .where((pharmacy) =>
                pharmacy.nom!.toLowerCase().contains(search.toLowerCase()))
            .toList();
      } else {
        _isSearching = false;
        filteredList = listprochePharma;
      }
    });
  }
}
