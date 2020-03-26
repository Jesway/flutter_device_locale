import 'package:flutter_device_locale/src/method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

abstract class FlutterDeviceLocalePlatform extends PlatformInterface {
  FlutterDeviceLocalePlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterDeviceLocalePlatform _instance =
      MethodChannelUrlFlutterDeviceLocale();

  static FlutterDeviceLocalePlatform get instance => _instance;

  static set instance(FlutterDeviceLocalePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<List<String>> deviceLocales() {
    throw UnimplementedError('deviceLocales() has not been implemented.');
  }
}
