import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:suji/core/theme/colors.dart';
import 'package:suji/core/values/constant.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          AppString.setting,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.0,
          ),
        ),
        leading: IconButton(
          onPressed: Get.back,
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: AppColors.background,
            size: 24.0,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            ListTile(
              title: Text(
                'language'.tr,
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              trailing: DropdownButton(
                  value: 
                  // 'id_ID',
                  '${Get.locale?.languageCode}_${Get.locale?.countryCode}',
                  items: [
                    DropdownMenuItem(
                      value: 'en_US',
                      child: Text('English'),
                    ),
                    DropdownMenuItem(
                      value: 'id_ID',
                      child: Text('Indonesia'),
                    ),
                    DropdownMenuItem(
                      value: 'ja_JP',
                      child: Text('Japan'),
                    ),
                    DropdownMenuItem(
                      value: 'ko_KR',
                      child: Text('Korea'),
                    ),

                  ],
                  onChanged: (lang) {
                    print(Get.locale?.languageCode);
                    print(Get.locale?.countryCode);

                    if (lang != null) {
                      final [_languageCode, _countryCode] =
                          lang.toString().split('_');
                      Get.updateLocale(Locale(_languageCode, _countryCode));
                    }
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
