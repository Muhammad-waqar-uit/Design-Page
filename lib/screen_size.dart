import 'package:flutter/material.dart';
import 'dart:math';

class ScaleSize {
  static double textScaleFactor(BuildContext context, {double maxTextScaleFactor = 1.5}) {
    final width = MediaQuery.of(context).size.width;
    double val = (width / 600) * maxTextScaleFactor;
    return max(1, min(val, maxTextScaleFactor));
  }
}