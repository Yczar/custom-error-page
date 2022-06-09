import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app/screens/error_screen.dart';

class CustomErrorPage {
  static void initialize() {
    ErrorWidget.builder = ((details) => MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            textTheme: GoogleFonts.openSansTextTheme(),
          ),
          home: ErrorScreen(
            details.exceptionAsString(),
          ),
        ));
  }
}
