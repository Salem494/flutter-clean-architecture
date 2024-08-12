import 'package:flutter/material.dart';
import 'package:flutter_clean_architucture/core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  final Color containerColor;
  final BorderRadius borderRadius;
  final double height, width;
  final Widget child;

  CustomButton(
      {required this.containerColor,
      required this.borderRadius,
      required this.height,
      required this.width,
      required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: borderRadius,
      ),
      child: child,
    );
  }
}
