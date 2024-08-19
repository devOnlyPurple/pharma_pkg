import 'package:flutter/material.dart';

import '../../models/pharmas.dart';
import '../../models/position_lat_long.dart';
import 'pharma_methode.dart'; // Assurez-vous que le fichier pharma_methode.dart est correctement importé depuis le bon emplacement

class PharmaciesList extends StatefulWidget {
  final Size size;
  final List<Pharmas> pharmacies;
  final bool isSearching;
  final List<Pharmas> filteredList;
  PositionLatLong? devicePosition;
  final bool isScroll;
  final int isConnected;

  PharmaciesList({
    super.key,
    required this.size,
    required this.pharmacies,
    required this.isSearching,
    required this.filteredList,
    required this.devicePosition,
    required this.isScroll,
    required this.isConnected,
  });

  @override
  _PharmaciesListState createState() => _PharmaciesListState();
}

class _PharmaciesListState extends State<PharmaciesList> {
  @override
  Widget build(BuildContext context) {
    return listpharmaMethode(
      context,
      widget.size,
      widget.pharmacies,
      widget.isSearching,
      widget.filteredList,
      widget.devicePosition,
      widget.isScroll,
      widget.isConnected,
    );
  }
}
