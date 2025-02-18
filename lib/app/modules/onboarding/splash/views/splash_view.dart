import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:suji/app/routes/app_pages.dart';
import 'package:suji/core/theme/colors.dart';
import 'package:suji/core/values/constant.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
        const Duration(seconds: 3), () => Get.offNamed(AppPages.menu));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(75.0),
          child: Image.asset(
            AppAssets.appIcon,
            height: 150,
          ),
        ),
      ),
    );
  }
}
