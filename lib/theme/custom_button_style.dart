import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Text button style
  static ButtonStyle get none => ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
    elevation: MaterialStateProperty.all<double>(0),
    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.zero),
    side: MaterialStateProperty.all<BorderSide>(
      const BorderSide(color: Colors.transparent),
    ),
  );
}
