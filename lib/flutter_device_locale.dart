import 'dart:async';

import 'package:flutter/services.dart';

class FlutterDeviceLocale {
  static const MethodChannel _channel =
      const MethodChannel('flutter_device_locale');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
