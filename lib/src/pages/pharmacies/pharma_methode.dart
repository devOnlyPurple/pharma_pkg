import 'package:flutter/material.dart';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_localization/flutter_localization.dart';

import '../../classe/localization/locales.dart';
import '../../helpers/constants/widget_constants.dart';
import '../../helpers/utils/class_utils.dart';
import '../../models/pharmas.dart';
import '../../models/position_lat_long.dart';
import '../empty_page.dart';
import 'detail_pharmacie.dart';

Widget listpharmaMethode(
  BuildContext context,
  Size size,
  List<Pharmas> listePharma,
  bool isSearching,
  List<Pharmas> filteredList,
  bool isScroll,
  int isConnected,
) {
  listePharma = isSearching ? filteredList : listePharma;
//  EmptyPage(
//             title: varProvider.connected == 2
//                 ? LocaleData.textInternet.getString(context)
//                 : LocaleData.agendaEmpty.getString(context),
//             asset: varProvider.connected == 2 ? NO_NETWORK : null,
//           )
  if (listePharma.isEmpty) {
    return !isScroll
        ? Center(
            child: EmptyPage(
                title: isConnected == 2
                    ? LocaleData.textInternet.getString(context)
                    : LocaleData.pharmacyEmpty.getString(context),
                asset: isConnected == 2 ? NO_NETWORK : null),
          )
        : SingleChildScrollView(
            child: Center(
              child: EmptyPage(
                  title: isConnected == 2
                      ? LocaleData.textInternet.getString(context)
                      : LocaleData.pharmacyEmpty.getString(context),
                  asset: isConnected == 2 ? NO_NETWORK : null),
            ),
          );
  }

  return ListView.builder(
      shrinkWrap: true,
      physics: !isScroll
          ? const NeverScrollableScrollPhysics()
          : BouncingScrollPhysics(),
      itemCount: listePharma.length,
      itemBuilder: (context, index) {
        Pharmas unePharmacie = listePharma[index];
        return Padding(
          padding: const EdgeInsets.only(top: 0, bottom: 0),
          child: Container(
            color: Colors.white,
            height: 80,
            width: size.width,
            child: InkWell(
              onTap: () {
                ClassUtils.navigateTo(
                    context,
                    PharmacieDetails(
                      unePharmacie: unePharmacie,
                    ));
              },
              child: Row(
                children: [
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 65,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7.5),
                      image: DecorationImage(
                          image:
                              CachedNetworkImageProvider(unePharmacie.photo!),
                          fit: BoxFit.cover),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 10),
                        Text(
                          unePharmacie.nom!,
                          style: const TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 10),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          unePharmacie.adresse!,
                          style: const TextStyle(fontSize: 8),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          '${unePharmacie.distance!} km',
                          style: const TextStyle(
                              fontSize: 8.5, color: Colors.black),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      });
}
