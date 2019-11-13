[<img src="https://raw.githubusercontent.com/jesway/flutter_device_locale/master/resources/flutter_device_locale.png" />](https://github.com/jesway/flutter_device_locale/)

[![Build Status](https://travis-ci.org/jesway/flutter_device_locale.svg)](https://travis-ci.org/jesway/flutter_device_locale)
[![License: MIT](https://img.shields.io/badge/License-MIT-ff69b4.svg)](https://github.com/jesway/flutter_device_locale/blob/master/LICENSE)
[![Flutter.io](https://img.shields.io/badge/Flutter-Website-deepskyblue.svg)](https://flutter.io/)

---

A Flutter plugin for retrieving the device locale information.

## Installation

Add this to your package's pubspec.yaml file:

```sh
dependencies:
  flutter_device_locale: ^0.3.3
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
Locale locale = await DeviceLocale.getCurrentLocale();
```

Retrieve the preferred locales:

```dart
List<Locale> preferredLocales = await DeviceLocale.getPreferredLocales();
```

## License

MIT License - Copyright (c) 2019 [Jesway](https://jesway.com)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
