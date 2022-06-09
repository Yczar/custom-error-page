import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../src/constants/lottie_constants.dart';
import '../../src/constants/string_constants.dart';
import '../../utils/margins/y_axis_margin.dart';

class ErrorScreen extends StatelessWidget {
  ErrorScreen(
    this.errorMessage, {
    Key? key,
  }) : super(key: key);
  final String errorMessage;
  final List<String> _errorTitles = errorTitles.split(',').toList();
  final _random = Random();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Lottie.memory(
                  Uint8List.fromList(
                    jsonEncode(map).codeUnits,
                  ),
                  height: size.width * 0.5,
                ),
              ),
              const YAxisMargin(40),
              Text(
                _errorTitles[_random.nextInt(_errorTitles.length)],
                style: theme.textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w800,
                  color: Colors.black,
                ),
              ),
              const YAxisMargin(20),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text(
                        errorMessage,
                        style: theme.textTheme.subtitle1?.copyWith(
                          fontWeight: FontWeight.w400,
                          color: Colors.black54,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
