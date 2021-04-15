import 'dart:async';

// TODO
// Since Flutter Web is currently not available in the stable branch, the
// Travis Build Job fails. Therefore we ignore the error until Flutter Web
// becomes stable eventually
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

import 'package:flutter_web_plugins/flutter_web_plugins.dart';

import 'platform.dart';

class FlutterDeviceLocaleWebPlugin extends FlutterDeviceLocalePlatform {
  static void registerWith(Registrar registrar) {
    FlutterDeviceLocalePlatform.instance = FlutterDeviceLocaleWebPlugin();
  }

  @override
  Future<List<String>> deviceLocales() async {
    // I don't know why, but if we don't create a copy, this future never completes.
    List<String> result = [];
    html.window.navigator.languages!.forEach(result.add);

    return result;
  }
}
