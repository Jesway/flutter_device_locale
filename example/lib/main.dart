import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:flutter_device_locale/flutter_device_locale.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _deviceLocale = 'Not loaded yet';
  String _preferredLocales = 'Not loaded yet';

  @override
  void initState() {
    super.initState();
    initDeviceLocale();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initDeviceLocale() async {
    String deviceLocale = 'Unkown';
    String preferredLocales = 'Unkown';
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      deviceLocale = (await DeviceLocale.getCurrentLocale()).toString();
      preferredLocales = (await DeviceLocale.getPreferredLocales()).join(", ");
    } on PlatformException {
      deviceLocale = 'Failed to get the device locale.';
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      _deviceLocale = deviceLocale;
      _preferredLocales = preferredLocales;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Text(
              'Current Locale: $_deviceLocale\n\nPreferred Locales: $_preferredLocales'),
        ),
      ),
    );
  }
}
