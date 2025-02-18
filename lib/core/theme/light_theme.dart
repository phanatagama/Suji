import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:suji/core/theme/colors.dart';
import 'package:suji/core/theme/text_style.dart';

ThemeData get appTheme => ThemeData(
      useMaterial3: true,
      fontFamily: poppins,
      colorSchemeSeed: AppColors.primary,
      textTheme: textTheme,
      elevatedButtonTheme: elevatedButtonThemeData,
      outlinedButtonTheme: outlinedButtonThemeData,
      inputDecorationTheme: inputDecorationTheme,
      appBarTheme: appBarThemeData,
    );

AppBarTheme get appBarThemeData => const AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.light,
        statusBarColor: AppColors.primary,
      ),
      centerTitle: true,
      backgroundColor: AppColors.primary,
      elevation: 0,
    );

ElevatedButtonThemeData get elevatedButtonThemeData => ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.onPrimary,
        padding: const EdgeInsets.symmetric(
          vertical: 13,
          horizontal: 24,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        minimumSize: const Size(100, 44),
      ),
    );

OutlinedButtonThemeData get outlinedButtonThemeData => OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        elevation: 0,
      ),
    );

InputDecorationTheme get inputDecorationTheme => InputDecorationTheme(
      contentPadding: const EdgeInsets.symmetric(horizontal: 16),
      filled: true,
      fillColor: AppColors.background,
      focusColor: AppColors.background,
      hintStyle: textTheme.bodyMedium!.copyWith(
        color: AppColors.primary.withAlpha((255*0.7).round()),
      ),
      errorStyle: textTheme.bodySmall!.copyWith(
        color: AppColors.error,
      ),
      border: const OutlineInputBorder(
        borderSide: BorderSide(
          color: Color.fromARGB(255, 216, 216, 216),
          width: 1,
        ),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      enabledBorder: const OutlineInputBorder(
        borderSide:
            BorderSide(color: Color.fromARGB(255, 216, 216, 216), width: 1),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      disabledBorder: const OutlineInputBorder(
        borderSide:
            BorderSide(color: Color.fromARGB(255, 216, 216, 216), width: 1),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      focusedBorder: const OutlineInputBorder(
        borderSide:
            BorderSide(color: Color.fromARGB(255, 216, 216, 216), width: 1),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      errorBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.error, width: 1),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      focusedErrorBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.error, width: 1),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
    );
