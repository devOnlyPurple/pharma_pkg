import 'package:flutter/material.dart';
import 'package:pharmacie_pkg/src/models/pharmas.dart';
import 'package:pharmacie_pkg/src/pages/pharmacies/pharma_methode.dart';

class PharmaciesList extends StatefulWidget {
  final Size size;
  final List<Pharmas> pharmacies;
  final bool isSearching;
  final List<Pharmas> filteredList;

  final bool isScroll;
  final int isConnected;

  PharmaciesList({
    super.key,
    required this.size,
    required this.pharmacies,
    required this.isSearching,
    required this.filteredList,
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
      widget.isScroll,
      widget.isConnected,
    );
  }
}
