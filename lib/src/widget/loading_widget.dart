import 'package:flutter/material.dart';

import '../helpers/constants/constant.dart';

Future<void> CustomLoading(BuildContext context,
    {Widget content = const CircularProgressIndicator(
      backgroundColor: Kprimary,
      color: Ksecondary,
    ),
    String status = "Chargement en cours",
    bool dismissOnTap = false}) {
  return showDialog<void>(
    context: context,
    barrierDismissible: dismissOnTap,
    builder: (BuildContext context) {
      return AlertDialog(
        scrollable: true,
        content: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            content,
            Br20(),
            Text(status,
                style:
                    const TextStyle(fontWeight: FontWeight.w400, fontSize: 11))
          ],
        ),
      );
    },
  );
}
