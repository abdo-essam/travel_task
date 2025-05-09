import 'package:flutter/material.dart';
import '../core/app_export.dart';

String _appTheme = "lightCode";
LightCodeColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();

/// Helper class for managing themes and colors.

// ignore_for_file: must_be_immutable
class ThemeHelper {
  // A map of custom color themes supported by the app
  Map<String, LightCodeColors> _supportedCustomColor = {
    'lightCode': LightCodeColors(),
  };

  // A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'lightCode': ColorSchemes.lightCodeColorScheme,
  };

  /// Changes the app theme to [_newTheme].
  void changeTheme(String _newTheme) {
    _appTheme = _newTheme;
  }

  /// Returns the lightCode colors for the current theme.
  LightCodeColors _getThemeColors() {
    return _supportedCustomColor[_appTheme] ?? LightCodeColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.lightCodeColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: appTheme.gray900,
      ),
    );
  }

  /// Returns the lightCode colors for the current theme.
  LightCodeColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
    bodyLarge: TextStyle(
      color: appTheme.whiteA700,
      fontSize: 18.fSize,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w400,
    ),
    bodyMedium: TextStyle(
      color: appTheme.whiteA700,
      fontSize: 14.fSize,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w400,
    ),
    bodySmall: TextStyle(
      color: appTheme.gray500,
      fontSize: 12.fSize,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w400,
    ),
    headlineSmall: TextStyle(
      color: appTheme.whiteA700,
      fontSize: 24.fSize,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w400,
    ),
    titleSmall: TextStyle(
      color: appTheme.orange200,
      fontSize: 14.fSize,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w500,
    ),
  );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final lightCodeColorScheme = ColorScheme.light();
}

/// Class containing custom colors for a lightCode theme.
class LightCodeColors {
  // Black
  Color get black900 => Color(0XFF000000);
  // BlueGray
  Color get blueGray100 => Color(0XFFD9D9D9);
  // DeepOrange
  Color get deepOrange800 => Color(0XFFC25F30);
  // Gray
  Color get gray500 => Color(0XFF999999);
  Color get gray800 => Color(0XFF484848);
  Color get gray900 => Color(0XFF262626);
  Color get gray90001 => Color(0XFF171717);
  // Orange
  Color get orange200 => Color(0XFFFFC268);
  // White
  Color get whiteA700 => Color(0XFFFFFFFF);
}
