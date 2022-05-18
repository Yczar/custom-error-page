import 'dart:io';

import 'package:flutter/material.dart';

import 'package:custom_error_page/custom_error_page.dart';

void main() {
  CustomErrorPage.initialize();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    throw (StdoutException);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: const Center(
          child: Text('How did you get here\n'),
        ),
      ),
    );
  }
}
