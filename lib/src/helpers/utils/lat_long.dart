import 'dart:convert';

import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;

import '../../models/position_lat_long.dart';

class PositionAllInfo {
  Future<PositionLatLong> getDevicePosition() async {
    Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );

    double latitude = position.latitude;
    double longitude = position.longitude;

    PositionLatLong positionLatLong = PositionLatLong(
      latitude: latitude.toString(),
      longitude: longitude.toString(),
    );

    return positionLatLong;
  }

  Future<String> getCountryCode(PositionLatLong position) async {
    var latitude = double.parse(position.latitude!);
    var longitude = double.parse(position.longitude!);
    final url =
        'https://nominatim.openstreetmap.org/reverse?lat=$latitude&lon=$longitude&format=json';

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return data['address']['country_code'].toUpperCase();
    } else {
      throw Exception('Failed to load country code');
    }
  }
}
