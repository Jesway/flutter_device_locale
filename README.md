[<img src="https://raw.githubusercontent.com/bratan/flutter_device_locale/master/resources/flutter_device_locale.png" />](https://github.com/bratan/flutter_device_locale/)

[![Build Status](https://travis-ci.org/bratan/flutter_device_locale.svg)](https://travis-ci.org/bratan/flutter_device_locale)
[![License: MIT](https://img.shields.io/badge/License-MIT-ff69b4.svg)](https://github.com/bratan/flutter_device_locale/blob/master/LICENSE)
[![Flutter.io](https://img.shields.io/badge/Flutter-Website-deepskyblue.svg)](https://flutter.io/)

---

A Flutter plugin for retrieving the device locale information.

## Installation

Add this to your package's pubspec.yaml file:

```sh
dependencies:
  flutter_device_locale: ^0.2.0
```

Install packages from the command line (or from your editor):

```sh
flutter pub get
```

Import flutter_device_locale:

```dart
import 'package:flutter_device_locale/flutter_device_locale.dart';
```

## Usage

Retrieve the current locale:

```dart
var currentLocale = await FlutterDeviceLocale.getCurrentLocale();
```

Retrieve the preferred locales:

```dart
var preferredLocales = await FlutterDeviceLocale.getPreferredLocales();
```
