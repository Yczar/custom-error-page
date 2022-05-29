# Custom Error Page

[![Pub Version](https://img.shields.io/pub/v/custom_error_page)](https://pub.dev/packages/custom_error_page)

This plugin for [Flutter](https://flutter.io)
handles getting a location on Android and iOS. It also provides callbacks when the location is changed.

<p align="center">
  <a href="http://www.youtube.com/watch?feature=player_embedded&v=65qbtJMltVk" target="_blank">
    <img src="http://img.youtube.com/vi/65qbtJMltVk/0.jpg" alt="Youtube Video" width=480" height="360" border="10" />
  </a>
</p>

[Web demo](https://lyokone.github.io/flutterlocation) (more features available on Android/iOS)

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

You can also get continuous callbacks when your position is changing:

```dart
location.onLocationChanged.listen((LocationData currentLocation) {
  // Use current location
});
```

## Feedback

Please feel free to [give me any feedback](https://github.com/Yczar/custom-error-page/issues)
helping support this plugin !
