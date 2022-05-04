import 'dart:async';
import 'package:flutter/services.dart';
import 'platform.dart';

const MethodChannel _channel = MethodChannel('flutter_device_locale');

class FlutterDeviceLocaleMethodChannelPlugin
    extends FlutterDeviceLocalePlatform {
  @override
  Future<List<String>> deviceLocales() async {
    final List<dynamic> result = await (_channel.invokeMethod('deviceLocales') as FutureOr<List<dynamic>>);
    return result.cast<String>();
  }
}