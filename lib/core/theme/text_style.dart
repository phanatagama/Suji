import 'package:flutter/material.dart';
import 'package:suji/core/theme/colors.dart';

/// Font Family Configs
String get poppins => 'Poppins';

FontWeight get thick => FontWeight.w100;
FontWeight get extraLight => FontWeight.w200;
FontWeight get light => FontWeight.w300;
FontWeight get regular => FontWeight.w400;
FontWeight get medium => FontWeight.w500;
FontWeight get semiBold => FontWeight.w600;
FontWeight get bold => FontWeight.w700;
FontWeight get extraBold => FontWeight.w800;
FontWeight get black => FontWeight.w900;

/// Text Theme Configs
TextTheme get textTheme => TextTheme(
      displayLarge: TextStyle(
        color: AppColors.onSurface,
        fontSize: 32.0,
        height: 1.5,
        fontWeight: bold,
      ),
      displayMedium: TextStyle(
        color: AppColors.onSurface,
        fontSize: 24.0,
        height: 1.5,
        fontWeight: bold,
      ),
      displaySmall: TextStyle(
        color: AppColors.onSurface,
        fontSize: 20.0,
        height: 1.5,
        fontWeight: bold,
      ),
      headlineMedium: TextStyle(
        color: AppColors.onSurface,
        fontSize: 18.0,
        height: 1.5,
        fontWeight: bold,
      ),
      headlineSmall: TextStyle(
        color: AppColors.onSurface,
        fontSize: 16.0,
        height: 1.5,
        fontWeight: bold,
      ),
      titleLarge: TextStyle(
        color: AppColors.onSurface,
        fontSize: 14.0,
        height: 1.5,
        fontWeight: bold,
      ),
      titleMedium: TextStyle(
        color: AppColors.onSurface,
        fontSize: 13.0,
        height: 1.5,
        fontWeight: regular,
      ),
      bodyLarge: TextStyle(
        color: AppColors.onSurface,
        fontSize: 15.0,
        height: 1.5,
        fontWeight: regular,
      ),
      bodyMedium: TextStyle(
        color: AppColors.onSurface,
        fontSize: 14.0,
        fontWeight: regular,
      ),
      bodySmall: TextStyle(
        color: AppColors.onSurface,
        fontSize: 13.0,
        fontWeight: regular,
      ),
    );

TextStyle h1Bold(BuildContext context) =>
    Theme.of(context).textTheme.displayLarge!;

TextStyle h2Bold(BuildContext context) =>
    Theme.of(context).textTheme.displayMedium!;

TextStyle h3Bold(BuildContext context) =>
    Theme.of(context).textTheme.displaySmall!;

TextStyle h4Bold(BuildContext context) =>
    Theme.of(context).textTheme.headlineMedium!;

TextStyle h5Bold(BuildContext context) =>
    Theme.of(context).textTheme.headlineSmall!;

TextStyle h6Bold(BuildContext context) =>
    Theme.of(context).textTheme.titleLarge!;

TextStyle arabicRegular(BuildContext context) =>
    Theme.of(context).textTheme.displayMedium!.copyWith(
          fontWeight: regular,
          // fontFamily: lpmqIsepMisbah,
        );

TextStyle bodyText1Regular(BuildContext context) =>
    Theme.of(context).textTheme.bodyLarge!;

TextStyle bodyText1Bold(BuildContext context) =>
    Theme.of(context).textTheme.bodyLarge!.copyWith(
          fontWeight: bold,
        );
TextStyle bodyText1SemiBold(BuildContext context) =>
    Theme.of(context).textTheme.bodyLarge!.copyWith(
          fontWeight: semiBold,
        );

TextStyle bodyText2Regular(BuildContext context) =>
    Theme.of(context).textTheme.bodyMedium!.copyWith(
          color: AppColors.onSurface,
        );

TextStyle bodyText2SemiBold(BuildContext context) =>
    Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: semiBold);

TextStyle bodyText2Bold(BuildContext context) =>
    Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: bold);
TextStyle bodyText3SemiBold(BuildContext context) =>
    Theme.of(context).textTheme.bodySmall!.copyWith(fontWeight: semiBold);
TextStyle subtitle1Regular(BuildContext context) =>
    Theme.of(context).textTheme.titleMedium!;

TextStyle subtitle1Bold(BuildContext context) =>
    Theme.of(context).textTheme.titleMedium!.copyWith(fontWeight: bold);
