import 'package:flutter/services.dart';

import 'platform.dart';

const MethodChannel _channel = MethodChannel('flutter_device_locale');

class MethodChannelUrlFlutterDeviceLocale extends FlutterDeviceLocalePlatform {
  @override
  Future<List<String>> deviceLocales() {
    return _channel.invokeMethod<void>('deviceLocales');
  }
}
