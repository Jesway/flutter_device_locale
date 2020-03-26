import 'package:flutter/services.dart';

import 'platform.dart';

const MethodChannel _channel = MethodChannel('flutter_device_locale');

class MethodChannelUrlFlutterDeviceLocale extends FlutterDeviceLocalePlatform {
  @override
  Future<List<String>> deviceLocales() async {
    final List<dynamic> result = await _channel.invokeMethod('deviceLocales');
    return result.cast<String>();
  }
}
