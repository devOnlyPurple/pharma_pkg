import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';

class ConnectivityChecker {
  Future<bool> checkInternetConnectivity() async {
    var connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult == ConnectivityResult.wifi ||
        connectivityResult == ConnectivityResult.mobile) {
      // Check if internet is reachable by pinging Google's DNS server
      final result = await InternetAddress.lookup('8.8.8.8');
      return result.isNotEmpty;
    }
    return false;
  }
}
