import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:suji/core/theme/colors.dart';

showErrorMessage(String message) {
  Get.snackbar(
    'information'.tr,
    message,
    snackPosition: SnackPosition.BOTTOM,
    margin: const EdgeInsets.all(8.0),
    backgroundColor: AppColors.error,
  );
}
showSuccessMessage(String message) {
  Get.snackbar(
    'information'.tr,
    message,
    snackPosition: SnackPosition.BOTTOM,
    margin: const EdgeInsets.all(8.0),
    backgroundColor: Colors.green,
  );
}
