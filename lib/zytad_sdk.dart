
import 'dart:async';
import 'package:flutter/material.dart';


import 'package:flutter/services.dart';

class ZytadSdk {
  static const MethodChannel _channel =
      const MethodChannel('zytad_sdk');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Color bb_fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

}
