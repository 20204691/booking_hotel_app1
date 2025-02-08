import 'package:booking_hotel_app1/theme/theme_helper.dart';
import 'package:flutter/material.dart';
import '../core/app_export.dart';


extension TextStyleExtension on TextStyle {}

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
class CustomTextStyles {
  // Body text styles
  static TextStyle get bodyLargeBluegray200 =>
      theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray200,
        fontSize: 17,
      );

  static TextStyle get bodyLargeOnPrimary =>
      theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
      );

  static TextStyle get bodyLargeSecondaryContainer =>
      theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.secondaryContainer,
      );

  static TextStyle get bodyLargeSecondaryContainer_1 =>
      theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.secondaryContainer.withAlpha(230), // Alpha 0.9
      );

  // Title text styles
  static TextStyle get titleMediumAmberA700 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.amberA700,
      );

  static TextStyle get titleMediumOnSecondaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
      );

  static TextStyle get titleMediumPrimary =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get titleMediumPrimary_1 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
      );

  static TextStyle get titleMediumSecondaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.secondaryContainer,
        fontSize: 18,
      );

  static TextStyle get titleMediumWhiteA700 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
      );

  static TextStyle get titleSmallPrimary =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
      );

  static TextStyle get titleSmallSecondaryContainer =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.secondaryContainer,
      );

  static TextStyle get titleSmallOnPrimary =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
}


