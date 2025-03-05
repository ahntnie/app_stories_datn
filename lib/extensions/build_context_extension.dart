import 'package:app_stories/constants/colors/app_colors.dart';
import 'package:app_stories/views/widgets/custom_snackbar.dart';
import 'package:flutter/material.dart';

extension ThemeModeExtension on BuildContext {
  bool get isDarkMode => Theme.of(this).brightness == Brightness.dark;

  Color get primaryBackgroundColor =>
      isDarkMode ? AppColors.mono100 : AppColors.mono0;

  Color get secondaryBackgroundColor =>
      isDarkMode ? AppColors.mono100 : AppColors.mono20;

  Color get secondaryWidgetColor =>
      isDarkMode ? AppColors.mono90 : AppColors.mono0;

  Color get primaryTextColor =>
      isDarkMode ? AppColors.mono20 : AppColors.mono100;

  Color get secondaryTextColor =>
      isDarkMode ? AppColors.mono40 : AppColors.mono80;

  Color get dividerColor => isDarkMode ? AppColors.mono80 : AppColors.mono20;

  ThemeData get lightTheme => ThemeData.light().copyWith(
        scaffoldBackgroundColor: AppColors.mono0,
        colorScheme: Theme.of(this).colorScheme.copyWith(
              brightness: Brightness.light,
              primary: AppColors.blueberry100,
              error: AppColors.rambutan100,
            ),
        textTheme: Theme.of(this).textTheme.apply(
              bodyColor: AppColors.mono100,
            ),
      );

  ThemeData get darkTheme => ThemeData.dark().copyWith(
        scaffoldBackgroundColor: AppColors.mono100,
        colorScheme: Theme.of(this).colorScheme.copyWith(
              brightness: Brightness.dark,
              primary: AppColors.blueberry100,
              error: AppColors.rambutan100,
            ),
        textTheme: Theme.of(this).textTheme.apply(
              bodyColor: AppColors.mono20,
            ),
      );

  void showSuccessSnackBar(String text) {
    ScaffoldMessenger.of(this).showSnackBar(CustomSnackBar.success(text: text));
  }

  void showInfoSnackBar(String text) {
    ScaffoldMessenger.of(this).showSnackBar(CustomSnackBar.info(text: text));
  }

  void showWarningSnackBar(String text) {
    ScaffoldMessenger.of(this).showSnackBar(CustomSnackBar.warning(text: text));
  }

  void showErrorSnackBar(String text) {
    ScaffoldMessenger.of(this).showSnackBar(CustomSnackBar.error(text: text));
  }
}
