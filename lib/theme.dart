import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData darkTheme() {
    return ThemeData(
      colorScheme: const ColorScheme.dark(
        primary: AppColors.goldyYellow,
        secondary: AppColors.royalePurple,
        tertiary: AppColors.steelPink,
        background: AppColors.smokyBlack,
        onBackground: AppColors.lacePink,
        onSurface: AppColors.lacePink,
      ),
      scaffoldBackgroundColor: AppColors.smokyBlack,
    );
  }

  static ThemeData lightTheme() {
    return ThemeData(
      colorScheme: const ColorScheme.dark(
        primary: AppColors.goldyYellow,
        secondary: AppColors.royalePurple,
        tertiary: Color(0xffC135CA),
        background: AppColors.lacePink,
        onBackground: AppColors.smokyBlack,
        onSurface: AppColors.smokyBlack,
      ),
      scaffoldBackgroundColor: AppColors.lacePink,
    );
  }
}

sealed class AppColors {
  /// primary color of the app
  static const royalePurple = Color(0xff591C5E);

  /// secondary color of the app
  static const goldyYellow = Color(0xffFFBB00);

  /// dark background
  static const smokyBlack = Color(0xff100411);

  /// tertiary color of the app
  static const steelPink = Color(0xffC135CA);

  /// on background
  static const lacePink = Color(0xffFEF4FF);
}
