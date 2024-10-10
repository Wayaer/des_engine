import 'package:des_engine/des_engine.dart';
import 'package:flutter/material.dart';

void main() {
  const String str = 'CfAmqOiIYz6NkH0Te32Uz6obXELPspz1pDj+oOUNNbsmptHP0Jwvdg==';
  const String key = 'your key';
  String? decoded;
  try {
    final DES des = DES(DESEngine(), key);
    decoded = des.decodeBase64(str);
  } catch (e) {
    debugPrint(e.toString());
  }

  String result =
      'des decode==>\n\nkey = $key \n\nString = $str\n\ndecoded ==> $decoded';
  debugPrint(result);
  runApp(MaterialApp(
    title: 'DESEngine Demo',
    debugShowCheckedModeBanner: false,
    home: Scaffold(body: Center(child: Text(result))),
  ));
}
