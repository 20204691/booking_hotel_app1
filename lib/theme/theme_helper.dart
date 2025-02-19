
import 'package:flutter/material.dart';
import '../core/app_export.dart';

// Текущая тема приложения.
String _appTheme = "LightCode";
// Геттер для получения кастомных цветов текущей темы.
LightCodeColors get appTheme => ThemeHelper().themeColor();
// Геттер для получения данных текущей темы.
ThemeData get theme => ThemeHelper().themeData();

///Helper class for managing themes and colors.
// ignore_for_file: must_be_immutable
class ThemeHelper {
  // Словарь с поддерживаемыми кастомными цветовыми темами.
  Map<String, LightCodeColors> _supportedCustomColor = {
    'lightCode': LightCodeColors(),
  };

  // Словарь с поддерживаемыми цветовыми схемами.
  Map<String, ColorScheme> _supportedColorScheme = {
    'lightCode': ColorSchemes.lightCodeColorScheme,
  };

  // Меняет тему приложения на [_newTheme].
  void changeTheme(String _newTheme) {
    _appTheme = _newTheme;
  }



  LightCodeColors _getThemeColors() {
    return _supportedCustomColor[_appTheme] ?? LightCodeColors();
  }

  ThemeData _getThemeData() {
    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.lightCodeColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14.0),
          ),
          elevation: 0,
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: colorScheme.onPrimaryContainer.withValues(
            alpha: 0.15,
        ),
      ),
    );
  }

  // Возвращает кастомные цвета для текущей темы.
  LightCodeColors themeColor() => _getThemeColors();

  // Возвращает текущие данные темы.
  ThemeData themeData() => _getThemeData();
}

// Класс, содержащий поддерживаемые стили текстовой темы.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
    bodyLarge: TextStyle(
      color: colorScheme.onPrimaryContainer,
      fontSize: 16.fSize,
      fontFamily: 'SF Pro Display',
      fontWeight: FontWeight.w400,
    ),
    bodyMedium: TextStyle(
      color: colorScheme.onPrimaryContainer,
      fontSize: 14.fSize,
      fontFamily: 'SF Pro Display',
      fontWeight: FontWeight.w400,
    ),
    headlineLarge: TextStyle(
      color: colorScheme.secondaryContainer,
      fontSize: 30.fSize,
      fontFamily: 'SF Pro Display',
      fontWeight: FontWeight.w600,
    ),
    titleLarge: TextStyle(
      color: colorScheme.secondaryContainer,
      fontSize: 22.fSize,
      fontFamily: 'SF Pro Display',
      fontWeight: FontWeight.w500,
    ),
    titleMedium: TextStyle(
      color: colorScheme.onPrimaryContainer,
      fontSize: 16.fSize,
      fontFamily: 'SF Pro Display',
      fontWeight: FontWeight.w500,
    ),
    titleSmall: TextStyle(
      color: appTheme.blueGray400,
      fontSize: 14.fSize,
      fontFamily: 'SF Pro Display',
      fontWeight: FontWeight.w500,
    ),
  );
}

// Класс, содержащий поддерживаемые цветовые схемы.
class ColorSchemes {
  static const lightCodeColorScheme = ColorScheme.light(
    primary: Color(0XFF0D72FF),
    secondaryContainer: Color(0XFF000000),
    onPrimary: Color(0XFF14132A),
    onPrimaryContainer: Color(0XFF828796),
    onSecondaryContainer: Color(0XFF2C3035),
  );
}

///Класс, содержащий кастомные цвета для темы lightCode.
class LightCodeColors {
  // Amber
  Color get amberA40033 => Color(0X33FFC600);
  Color get amberA700 => Color(0XFFFFA800);
  // BlueGray
  Color get blueGray200 => Color(0XFFA8ABB6);
  Color get blueGray400 => Color(0XFF828696);
  // Gray
  Color get gray100 => Color(0XFFF6F6F9);
  Color get gray200 => Color(0XFFE8E9EC);
  Color get gray50 => Color(0XFFFBFBFC);
  // White
  Color get whiteA700 => Color(0XFFFFFFFF);
}
