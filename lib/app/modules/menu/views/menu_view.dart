import 'package:flutter/material.dart' hide MenuController;
import 'package:get/get.dart';
import 'package:suji/app/domain/entities/daily_pray.dart';
import 'package:suji/app/modules/menu/controllers/menu_controller.dart';
import 'package:suji/app/routes/app_pages.dart';
import 'package:suji/app/widgets/box_placeholder.dart';
import 'package:suji/core/theme/colors.dart';
import 'package:suji/core/theme/text_style.dart';
import 'package:suji/core/values/constant.dart';

class MenuView extends GetView<MenuController> {
  const MenuView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          controller: ScrollController(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeroItem(),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 80.0,
                    ),
                    Text(
                      'daily_pray'.tr,
                      style: const TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'daily_pray_reminder'.tr,
                      style: const TextStyle(
                        fontSize: 12.0,
                      ),
                    ),
                    controller.obx(
                      _buildSurahSuccess,
                      onLoading: const BoxPlaceholder(),
                      onError: _buildSurahError,
                      onEmpty: const SizedBox.shrink(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSurahError(errorMessage) {
    return Center(
      child: IconButton(
        onPressed: () async => await controller.getDailyPray(),
        icon: const Icon(
          Icons.replay,
          size: 24.0,
        ),
      ),
    );
  }

  Widget _buildSurahSuccess(state) {
    return ListView.separated(
      itemCount: state?.length ?? 0,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (BuildContext context, int index) {
        return const Divider(
          color: AppColors.primary,
        );
      },
      itemBuilder: (BuildContext context, int index) {
        final dataDailyPray = state![index];
        return GestureDetector(
          onTap: () => _showDaillyPrayDetail(dataDailyPray),
          child: ListTile(
            leading: const Icon(Icons.mosque),
            minLeadingWidth: 0.0,
            title: Text(dataDailyPray.title),
            trailing: const Icon(
              Icons.chevron_right,
              size: 24.0,
            ),
          ),
        );
      },
    );
  }

  Widget _buildHeroItem() {
    return Stack(
      children: [
        Container(
          height: Get.height * 0.25,
          width: double.infinity,
          foregroundDecoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                AppColors.darkSurface.withAlpha((255*0.1).round()),
                AppColors.darkSurface,
              ])),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                AppAssets.imgBannerShalat,
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('greeting'.tr,
                  style: Get.textTheme.headlineMedium?.copyWith(
                      fontWeight: medium, color: AppColors.onDarkSurface)),
              Text(
                'user'.tr,
                style: Get.textTheme.displayMedium
                    ?.copyWith(color: AppColors.onDarkSurface),
              ),
            ],
          ),
        ),
        Transform.translate(
          offset: const Offset(0.0, 110),
          child: Center(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(8.0),
              margin: const EdgeInsets.all(16.0),
              decoration: const BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black12,
                      blurRadius: 16.0,
                      offset: Offset(.0, 6.0))
                ],
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    8.0,
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.min,
                children: [
                  GestureDetector(
                    onTap: controller.toShalat,
                    child: Container(
                      width: 80,
                      height: 80,
                      color: Colors.transparent,
                      margin: const EdgeInsets.only(top: 8.0),
                      alignment: Alignment.topCenter,
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(4.0),
                            decoration: BoxDecoration(
                                border: Border.all(color: AppColors.primary),
                                borderRadius: BorderRadius.circular(12)),
                            child: const ImageIcon(
                                AssetImage(
                                  AppAssets.iconPrayerTime,
                                ),
                                size: 32.0,
                                color: AppColors.primary),
                          ),
                          Text(
                            'prayer_time'.tr,
                            maxLines: 2,
                            style: Get.textTheme.bodySmall,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Get.toNamed(Routes.HOME),
                    child: Container(
                      width: 80,
                      height: 80,
                      color: Colors.transparent,
                      margin: const EdgeInsets.only(top: 8.0),
                      alignment: Alignment.topCenter,
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(4.0),
                            decoration: BoxDecoration(
                                border: Border.all(color: AppColors.primary),
                                borderRadius: BorderRadius.circular(12)),
                            child: const ImageIcon(
                                AssetImage(
                                  AppAssets.iconQuran,
                                ),
                                size: 32.0,
                                color: AppColors.primary),
                          ),
                          Text(
                            AppString.alQuran,
                            maxLines: 2,
                            style: Get.textTheme.bodySmall,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Get.toNamed(AppPages.tasbih),
                    child: Container(
                      width: 80,
                      height: 80,
                      color: Colors.transparent,
                      margin: const EdgeInsets.only(top: 8.0),
                      alignment: Alignment.topCenter,
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(4.0),
                            decoration: BoxDecoration(
                                border: Border.all(color: AppColors.primary),
                                borderRadius: BorderRadius.circular(12)),
                            child: const ImageIcon(
                                AssetImage(
                                  AppAssets.iconTasbih,
                                ),
                                size: 32.0,
                                color: AppColors.primary),
                          ),
                          Text(
                            AppString.tasbihDigital,
                            maxLines: 2,
                            style: Get.textTheme.bodySmall,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Get.toNamed(AppPages.asmaulHusna),
                    child: Container(
                      width: 80,
                      height: 80,
                      color: Colors.transparent,
                      margin: const EdgeInsets.only(top: 8.0),
                      alignment: Alignment.topCenter,
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(4.0),
                            decoration: BoxDecoration(
                                border: Border.all(color: AppColors.primary),
                                borderRadius: BorderRadius.circular(12)),
                            child: const ImageIcon(
                                AssetImage(
                                  AppAssets.iconShalat,
                                ),
                                size: 32.0,
                                color: AppColors.primary),
                          ),
                          Text(
                            AppString.asmaulHusna,
                            maxLines: 2,
                            style: Get.textTheme.bodySmall,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  void _showDaillyPrayDetail(DailyPray dailyPray) {
    Get.bottomSheet(
      SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(24),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
          ),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  dailyPray.title,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  dailyPray.arabic,
                  style: Get.textTheme.titleLarge?.copyWith(
                    fontSize: 16.0,
                  ),
                  textAlign: TextAlign.right,
                ),
                Text(
                  dailyPray.latin,
                  style: Get.textTheme.bodyLarge
                      ?.copyWith(color: AppColors.primary),
                  textAlign: TextAlign.justify,
                ),
                Text(
                  dailyPray.translation,
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(
                  height: 8.0,
                ),
                SizedBox(
                  height: Get.height * 0.07,
                  width: Get.width,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        shape:
                            WidgetStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ))),
                    onPressed: () => Get.back(),
                    child: Text(
                      'back'.tr,
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      isScrollControlled: true,
    );
  }
}
