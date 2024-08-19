import 'package:pharmacie_pkg/src/helpers/constants/api_constant.dart';

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
