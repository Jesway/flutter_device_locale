import 'package:flutter/services.dart';

import 'platform.dart';

const MethodChannel _channel = MethodChannel('flutter_device_locale');

class FlutterDeviceLocaleMethodChannelPlugin
    extends FlutterDeviceLocalePlatform {
  @override
  Future<List<String>> deviceLocales() async {
    final result =
        (await _channel.invokeMethod('deviceLocales') as List<dynamic>);
    return result.cast<String>();
  }
}
