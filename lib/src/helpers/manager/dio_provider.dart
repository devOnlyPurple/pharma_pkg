import 'dart:io';
import 'dart:typed_data';
import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pharmacie_pkg/src/helpers/constants/api_constant.dart';

Future<Dio> getDio() async {
  Dio dio = Dio();
  dio.options.headers['apiKey'] = API_KEY;

  // URL du certificat hébergé en ligne
  const certificateUrl =
      'https://github.com/devOnlyPurple/pharma_pkg/raw/main/assets/cert/kondjigbale.crt';

  // Téléchargement du certificat
  final ByteData certData = await downloadCertificate(certificateUrl);

  // Configuration de Dio avec le certificat
  dio.httpClientAdapter = IOHttpClientAdapter(
    createHttpClient: () {
      final SecurityContext scontext = SecurityContext();
      scontext.useCertificateChainBytes(certData.buffer.asUint8List());

      HttpClient client = HttpClient(context: scontext);
      return client;
    },
  );
  return dio;
}

Future<ByteData> downloadCertificate(String url) async {
  Dio dio = Dio();
  final directory =
      await getTemporaryDirectory(); // Utilisation d'un répertoire temporaire
  final filePath = '${directory.path}/kondjigbale.crt';

  try {
    // Téléchargement du fichier
    await dio.download(url, filePath);
    final file = File(filePath);
    final bytes = await file.readAsBytes();
    return ByteData.sublistView(Uint8List.fromList(bytes));
  } catch (e) {
    print('Error downloading certificate: $e');
    rethrow;
  }
}
