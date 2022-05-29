# Custom Error Page

[![Pub Version](https://img.shields.io/pub/v/custom_error_page)](https://pub.dev/packages/custom_error_page)

This plugin for [Flutter](https://flutter.io)
handles getting a location on Android and iOS. It also provides callbacks when the location is changed.

## Screen Record

https://user-images.githubusercontent.com/32166619/170850379-d649668a-47a1-40c0-8c34-0fcf1f98c371.MP4

## Getting Started

Add this to your package's `pubspec.yaml` file:

```yaml
dependencies:
  custom_error_page: ^0.0.1
```

## Usage

Then you just have to import the package with

```dart
import 'package:custom_error_page/custom_error_page.dart';
```

In order to intercept your error builder, add the custom error message to your main method.

```dart
void main() {
  CustomErrorPage.initialize();
  runApp(const MyApp());
}
```

## Feedback

Please feel free to [give me any feedback](https://github.com/Yczar/custom-error-page/issues)
helping support this plugin !
