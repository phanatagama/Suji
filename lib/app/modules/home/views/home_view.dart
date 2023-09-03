import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:suji/app/routes/app_pages.dart';
import 'package:suji/core/theme/colors.dart';
import 'package:suji/core/theme/text_style.dart';
import 'package:suji/core/utils/base_state.dart';
import 'package:suji/app/widgets/box_placeholder.dart';
import 'package:suji/core/utils/logger.dart';
import 'package:suji/core/values/constant.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          controller: ScrollController(),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () => Get.toNamed('/shalat'),
                      tooltip: 'Jadwal Shalat',
                      icon: const Icon(
                        Icons.mosque_outlined,
                        size: 24.0,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Suka Ngaji App',
                        style: TextStyle(
                          color: Color(0xFF672CBC),
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () => Get.toNamed('/search'),
                      tooltip: 'Cari',
                      icon: const Icon(
                        Icons.search,
                        size: 24.0,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('greeting'.tr,
                          style: textTheme.headlineMedium
                              ?.copyWith(fontWeight: medium)),
                      Text(
                        'user'.tr,
                        style: textTheme.displayMedium,
                      ),
                    ],
                  ),
                ),
                _buildHomeBanner(),
                // _buildProgresJuz(),
                _buildSurahList()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSurahList() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Obx(() {
        if (controller.state == BaseState.loading) {
          // print('current State: ${controller.state}');
          Log.d('[HomeView][controller.state]', controller.state.toString());
          return ListView.separated(
            itemCount: 10,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            separatorBuilder: (BuildContext context, int index) {
              return Container(
                height: 4.0,
              );
            },
            itemBuilder: (BuildContext context, int index) {
              return const BoxPlaceholder(width: double.infinity, height: 64.0);
            },
          );
        } else if (controller.state == BaseState.error) {
          return Center(
            child: IconButton(
              onPressed: () async {
                await controller.getAllSurah();
              },
              icon: const Icon(
                Icons.replay,
                size: 24.0,
              ),
            ),
          );
        } else if (controller.state == BaseState.success) {
          // print('Success: ${controller.listSurah.length}');
          Log.d('[HomeView][controller.listSurah.length]',
              controller.listSurah.length.toString());
          return ListView.builder(
            itemCount: controller.listSurah.length,
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              final surah = controller.listSurah[index];
              return InkWell(
                onTap: () => Get.toNamed('${Routes.SURAH}/${surah.number}'),
                child: Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      backgroundImage:
                          const AssetImage(AppAssets.imgBorderSurah),
                      child: Text(
                        '${surah.number}',
                        style: textTheme.titleLarge,
                      ),
                    ),
                    title: Text(surah.nameTransliterationId, style: textTheme.titleLarge),
                    subtitle: Text(
                        '${surah.revelationId} - ${surah.numberOfVerses} Ayat'),
                    trailing: Text(
                      surah.nameShort,
                      style: textTheme.headlineSmall?.copyWith(color: AppColors.primary),
                    ),
                  ),
                ),
              );
            },
          );
        } else {
          return const Center(
            child: Text(
              'Empty',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
          );
        }
      }),
    );
  }

  Widget _buildProgresJuz() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Card(
        child: Container(
          width: Get.width,
          padding: const EdgeInsets.all(24.0),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '89%',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 6.0,
              ),
              Text(
                'Progress Kamu',
                style: TextStyle(
                  fontSize: 12.0,
                ),
              ),
              SizedBox(
                height: 4.0,
              ),
              LinearProgressIndicator(
                value: 0.89,
                // color: textColor1,
              ),
              SizedBox(
                height: 4.0,
              ),
              Row(
                children: [
                  Text(
                    '1 Juz',
                    style: TextStyle(
                      fontSize: 10.0,
                    ),
                  ),
                  Spacer(),
                  Text(
                    '30 Juz',
                    style: TextStyle(
                      fontSize: 10.0,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHomeBanner() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(children: [
        Container(
          height: Get.height * 0.2,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.all(
              Radius.circular(
                24.0,
              ),
            ),
          ),
          child: Image.asset(
            AppAssets.imgBannerHome,
            fit: BoxFit.fill,
          ),
        ),
        const Positioned.fill(
          child: Padding(
            // color: Colors.black,
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.chrome_reader_mode_rounded,
                      color: Colors.white,
                      size: 24.0,
                    ),
                    SizedBox(
                      width: 8.0,
                    ),
                    Text(
                      'Last Read',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 14.0,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Text(
                  'Al-Fatihah',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  'Ayat No: 1',
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
