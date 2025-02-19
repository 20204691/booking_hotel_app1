import 'package:flutter/material.dart';
import '../core/app_export.dart';

class AppDecoration {
  // B decorations
  static BoxDecoration get bGSecondary => BoxDecoration(
    color: appTheme.whiteA700,
    border: Border.all(
      color: appTheme.gray200,
      width: 1.h,
    ),
  );

  // Fill decorations
  static BoxDecoration get fillAmberA => BoxDecoration(
    color: appTheme.amberA40033,
  );
  static BoxDecoration get fillGray => BoxDecoration(
    color: appTheme.gray100,
  );
  static BoxDecoration get fillGray50 => BoxDecoration(
    color: appTheme.gray50,
  );
  static BoxDecoration get fillPrimary => BoxDecoration(
    color: theme.colorScheme.primary.withOpacity(0.1,
    ),
  );
  static BoxDecoration get fillWhiteA => BoxDecoration(
    color: appTheme.whiteA700,
  );
}

class BorderRadiusStyle {
  // Custom borders
  static BorderRadius get customBorderBL12 => BorderRadius.vertical(
    bottom: Radius.circular(12.h),
  );

  // Rounded borders
  static BorderRadius get roundedBorder14 => BorderRadius.circular(14.h);
  static BorderRadius get roundedBorder46 => BorderRadius.circular(46.h);
  static BorderRadius get roundedBorder5 => BorderRadius.circular(5.h);
}
