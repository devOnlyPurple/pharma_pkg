import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:pharmacie_pkg/pharmacie_pkg.dart';
import 'package:pharmacie_pkg/src/helpers/constants/api_constant.dart';
import 'package:pharmacie_pkg/src/helpers/manager/api_manager.dart';
import 'package:pharmacie_pkg/src/models/pharmacie_response.dart';

class ApiRepository {
// reset_password

  static Future<PharmaciesResponse> listPharma(
      Map<String, String> datas) async {
    Dio dio = await getDio();
    PharmaciesResponse responseMenu = PharmaciesResponse();

    // Attendre que la future soit résolu
    //print(1);
    datas = await Api.get_default_datas2(datas);
    //print(2);
    FormData formData = FormData.fromMap(datas);

    Response response = await dio.post(LIST_PHARMA_SERVER_URL, data: formData);
    //print(response.statusCode);

    if (response.statusCode == 200) {
      // Analyser la réponse JSON et créer un objet LoginResponse
      var data = jsonDecode(response.data);
      //print(4);

      responseMenu = PharmaciesResponse.fromJson(data);
      //print(5);
    } else {
      responseMenu = PharmaciesResponse(
        status: response.statusCode.toString(),
        message: 'Erreur de serveur: ${response.statusCode}',
      );
    }

    return responseMenu;
  }

  // actualite
}
