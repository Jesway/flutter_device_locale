import 'dart:async';
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
