import 'package:flutter/material.dart';

class YAxisMargin extends StatelessWidget {
  const YAxisMargin(
    this.ySize, {
    Key? key,
  }) : super(key: key);
  final double ySize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ySize,
    );
  }
}
