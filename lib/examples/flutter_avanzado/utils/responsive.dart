import 'package:flutter/material.dart';
import 'dart:math' as math;

class Responsive {
  final double width, height, inch;

  Responsive({required this.width, required this.height, required this.inch});

  factory Responsive.of(BuildContext context) {
    final MediaQueryData data = MediaQuery.of(context);
    final double width = data.size.width;
    final double height = data.size.height;
    final double inch = math.sqrt(math.pow(width, 2) + math.pow(height, 2));
    return Responsive(width: width, height: height, inch: inch);
  }

  double wp(double percent) => width * percent / 100;

  double hp(double percent) => height * percent / 100;

  double ip(double percent) => inch * percent / 100;
}
