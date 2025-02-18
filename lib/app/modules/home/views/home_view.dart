import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:suji/app/domain/entities/surah.dart';
import 'package:suji/app/routes/app_pages.dart';
import 'package:suji/core/theme/colors.dart';
import 'package:suji/core/theme/text_style.dart';
import 'package:suji/app/widgets/box_placeholder.dart';
import 'package:suji/core/values/constant.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppString.alQuran.tr,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.0,
          ),
        ),
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: AppColors.background,
            size: 24.0,
          ),
        ),
        actions: [
          IconButton(
            onPressed: controller.toSearchPage,
            tooltip: 'search'.tr,
            icon: const Icon(
              Icons.search,
              color: Colors.white,
              // size: 24.0,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          controller: ScrollController(),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [_buildHomeBanner(), _buildSurahList()],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSurahListLoading() {
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
  }

  Widget _buildSurahListError(String? errorMessage) {
    return Center(
      child: IconButton(
        onPressed: () async => await controller.getAllSurah(),
        tooltip: AppString.refresh,
        icon: const Icon(
          Icons.replay,
          size: 24.0,
        ),
      ),
    );
  }

  Widget _buildSurahListSuccess(List<Surah>? listSurah) {
    return ListView.builder(
      itemCount: listSurah?.length,
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        final surah = listSurah![index];
        return InkWell(
          onTap: () {
            controller.setLastRead(surah.nameTransliterationId);
            Get.toNamed('${Routes.SURAH}/${surah.number}');
          },
          child: Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.transparent,
                backgroundImage: const AssetImage(AppAssets.imgBorderSurah),
                child: Text(
                  '${surah.number}',
                  style: Get.textTheme.titleLarge,
                ),
              ),
              title: Text(surah.nameTransliterationId,
                  style: Get.textTheme.titleLarge),
              subtitle:
                  Text('${surah.revelationId} - ${surah.numberOfVerses} Ayat'),
              trailing: Text(
                surah.nameShort,
                style: Get.textTheme.headlineSmall
                    ?.copyWith(color: AppColors.primary),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildSurahList() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: controller.obx(_buildSurahListSuccess,
          onLoading: _buildSurahListLoading(),
          onError: _buildSurahListError,
          onEmpty: const SizedBox.shrink()),
    );
  }

  // Widget _buildProgresJuz() {
  //   return Padding(
  //     padding: const EdgeInsets.symmetric(horizontal: 8.0),
  //     child: Card(
  //       child: Container(
  //         width: Get.width,
  //         padding: const EdgeInsets.all(24.0),
  //         child: const Column(
  //           crossAxisAlignment: CrossAxisAlignment.start,
  //           children: [
  //             Text(
  //               '89%',
  //               style: TextStyle(
  //                 fontSize: 20.0,
  //                 fontWeight: FontWeight.bold,
  //               ),
  //             ),
  //             SizedBox(
  //               height: 6.0,
  //             ),
  //             Text(
  //               'Progress Kamu',
  //               style: TextStyle(
  //                 fontSize: 12.0,
  //               ),
  //             ),
  //             SizedBox(
  //               height: 4.0,
  //             ),
  //             LinearProgressIndicator(
  //               value: 0.89,
  //               // color: textColor1,
  //             ),
  //             SizedBox(
  //               height: 4.0,
  //             ),
  //             Row(
  //               children: [
  //                 Text(
  //                   '1 Juz',
  //                   style: TextStyle(
  //                     fontSize: 10.0,
  //                   ),
  //                 ),
  //                 Spacer(),
  //                 Text(
  //                   '30 Juz',
  //                   style: TextStyle(
  //                     fontSize: 10.0,
  //                   ),
  //                 ),
  //               ],
  //             ),
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }

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
        Positioned.fill(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.chrome_reader_mode_rounded,
                      color: Colors.white,
                      size: 24.0,
                    ),
                    const SizedBox(
                      width: 8.0,
                    ),
                    Text(
                      'last_read'.tr,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 14.0,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Obx(() => Text(
                      controller.lastRead,
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: bold,
                        color: Colors.white,
                      ),
                    )),
                const SizedBox(
                  height: 8.0,
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
