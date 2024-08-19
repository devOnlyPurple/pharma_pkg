import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../../classe/device_infos.dart';

import '../constants/api_constant.dart';
import '../utils/device_all_info.dart';

class Api {
  static get_default_datas2(Map<String, String> datas) async {
    String dIdentifiant = 'XOF';
    // String lang = localization.currentLocale!.languageCode;
    datas.addAll({
      "access_token": ACCESS_TOKEN,
      "c_identifiant": CANAL,
      "dv_identifiant": dIdentifiant,
      "registration_id": '',
    });

    return datas;
  }
}
