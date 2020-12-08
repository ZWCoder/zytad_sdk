import 'dart:ui';

import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zytad_sdk/zytad_sdk.dart';
import 'package:flutter/material.dart';

void main() {
  const MethodChannel channel = MethodChannel('zytad_sdk');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {

    final Color color = ZytadSdk.bb_fromHex('#F96600');


  });
}
