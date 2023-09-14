import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:share_plus/share_plus.dart';
import 'package:suji/app/domain/entities/surah_detail.dart';
import 'package:suji/app/modules/surah/controllers/audio_controller.dart';
import 'package:suji/core/theme/colors.dart';
import 'package:suji/core/theme/text_style.dart';
import 'package:suji/app/widgets/box_placeholder.dart';
import 'package:suji/core/values/constant.dart';

import '../controllers/surah_controller.dart';

class SurahView extends GetView<SurahController> {
  const SurahView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(375, 812));
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          AppString.surah,
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
          controller.obx((state) {
            return IconButton(
              onPressed: () => _showTafsirBottomsheet(state!.first.tafsirId),
              icon: Icon(
                Icons.info_outline,
                size: 24.w,
                color: Colors.white,
              ),
            );
          }, onError: (_) => const SizedBox.shrink()),
          // Obx(() {
          //   if (controller.status == RxStatus.success()) {
          //     return IconButton(
          //       onPressed: () =>
          //           _showTafsirBottomsheet(controller.state!.first.tafsirId),
          //       icon: Icon(
          //         Icons.info_outline,
          //         size: 24.w,
          //         color: Colors.white,
          //       ),
          //     );
          //   } else {
          //     return Container();
          //   }
          // }),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              children: [
                // SizedBox(
                //   height: 45.h,
                // ),
                // _buildNavBar(),
                SizedBox(
                  height: 24.h,
                ),
                _buildBanner(),
                SizedBox(
                  height: 32.h,
                ),
                _buildAyahList()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildAyahList() {
    return controller.obx(_buildAyahListSuccess,
        onError: _buildAyahListError,
        onLoading: _buildAyahListLoading(),
        onEmpty: const SizedBox.shrink());
    // return Obx(() {
    //   if (controller.state == BaseState.loading) {
    //     return ListView.separated(
    //       itemCount: 10,
    //       shrinkWrap: true,
    //       physics: const NeverScrollableScrollPhysics(),
    //       separatorBuilder: (BuildContext context, int index) {
    //         return Container(
    //           height: 4.h,
    //         );
    //       },
    //       itemBuilder: (BuildContext context, int index) {
    //         return BoxPlaceholder(
    //           width: double.infinity,
    //           height: 64.h,
    //         );
    //       },
    //     );
    //   } else if (controller.state == BaseState.error) {
    //     Get.snackbar('information'.tr, controller.message,
    //         snackPosition: SnackPosition.BOTTOM,
    //         margin: const EdgeInsets.all(8.0),
    //         backgroundColor: AppColors.error);
    //     return Center(
    //       child: IconButton(
    //         onPressed: () async => await controller.getAyahBySurahNumber(),
    //         icon: Icon(
    //           Icons.replay,
    //           size: 24.h,
    //         ),
    //       ),
    //     );
    //   } else if (controller.state == BaseState.success &&
    //       controller.listAyat.isNotEmpty) {
    //     return ListView.builder(
    //       shrinkWrap: true,
    //       physics: const NeverScrollableScrollPhysics(),
    //       itemCount: controller.listAyat.length,
    //       itemBuilder: (context, index) {
    //         final ayah = controller.listAyat[index];
    //         return SizedBox(
    //           width: double.infinity,
    //           child: Column(
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             children: [
    //               Container(
    //                 decoration: BoxDecoration(
    //                   color: AppColors.secondary,
    //                   borderRadius: BorderRadius.all(
    //                     Radius.circular(10.r),
    //                   ),
    //                 ),
    //                 child: Padding(
    //                   padding: EdgeInsets.all(10.w),
    //                   child: Row(
    //                     children: [
    //                       CircleAvatar(
    //                         radius: 16.r,
    //                         backgroundColor: AppColors.primaryContainer,
    //                         child: Text(
    //                           '${ayah.versesNumberInSurah}',
    //                           style: TextStyle(
    //                             fontSize: 14.sp,
    //                             fontWeight: medium,
    //                             color: Colors.white,
    //                           ),
    //                         ),
    //                       ),
    //                       const Spacer(),
    //                       IconButton(
    //                         tooltip: 'Bagikan',
    //                         onPressed: () {
    //                           final textAyah =
    //                               '''
    //                             Surah : ${ayah.nameTransliterationId}
    //                             Ayah : ${ayah.versesNumberInSurah}
    //                             ${ayah.versesTextArab}
    //                             Tafsir:
    //                             ${ayah.versesTafsirIdShort}''';
    //                           Share.share(textAyah);
    //                         },
    //                         icon: const Icon(
    //                           Icons.share,
    //                           color: AppColors.primary,
    //                         ),
    //                       ),
    //                       AudioPlayerWidget(
    //                         index: index,
    //                         ayah: ayah,
    //                       ),
    //                       IconButton(
    //                         tooltip: 'Tafsir',
    //                         onPressed: () => _showTafsirBottomsheet(
    //                             ayah.versesTafsirIdShort),
    //                         icon: const Icon(
    //                           Icons.document_scanner,
    //                           color: AppColors.primary,
    //                         ),
    //                       ),
    //                     ],
    //                   ),
    //                 ),
    //               ),
    //               SizedBox(
    //                 height: 24.h,
    //               ),
    //               Align(
    //                 alignment: Alignment.centerRight,
    //                 child: Text(
    //                   ayah.versesTextArab,
    //                   textDirection: TextDirection.rtl,
    //                   style: TextStyle(
    //                       fontSize: 18.sp, fontWeight: FontWeight.w700),
    //                 ),
    //               ),
    //               SizedBox(
    //                 height: 16.h,
    //               ),
    //               Text(
    //                 ayah.versesTranslationId,
    //                 textAlign: TextAlign.justify,
    //                 style:
    //                     TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w400),
    //               ),
    //               SizedBox(
    //                 height: 16.h,
    //               ),
    //             ],
    //           ),
    //         );
    //       },
    //     );
    //   } else {
    //     Log.d('[SurahView][controller.state]', controller.state.toString());
    //     Log.d('[SurahView][controller.listAyat.isNotEmpty]',
    //         controller.listAyat.isNotEmpty.toString());
    //     return Center(
    //       child: IconButton(
    //         onPressed: () async => await controller.getAyahBySurahNumber(),
    //         icon: Icon(
    //           Icons.replay,
    //           size: 24.h,
    //         ),
    //       ),
    //     );
    //   }
    // });
  }

  Widget _buildAyahListSuccess(listAyah) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: listAyah?.length,
      itemBuilder: (context, index) {
        final ayah = listAyah![index];
        return SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: AppColors.secondary,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.r),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(10.w),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 16.r,
                        backgroundColor: AppColors.primaryContainer,
                        child: Text(
                          '${ayah.versesNumberInSurah}',
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: medium,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const Spacer(),
                      IconButton(
                        tooltip: 'Bagikan',
                        onPressed: () {
                          final textAyah = '''
                              Surah : ${ayah.nameTransliterationId}
                              Ayah : ${ayah.versesNumberInSurah}
                              ${ayah.versesTextArab}
                              Tafsir:
                              ${ayah.versesTafsirIdShort}''';
                          Share.share(textAyah);
                        },
                        icon: const Icon(
                          Icons.share,
                          color: AppColors.primary,
                        ),
                      ),
                      AudioPlayerWidget(
                        index: index,
                        ayah: ayah,
                      ),
                      IconButton(
                        tooltip: 'Tafsir',
                        onPressed: () =>
                            _showTafsirBottomsheet(ayah.versesTafsirIdShort),
                        icon: const Icon(
                          Icons.document_scanner,
                          color: AppColors.primary,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  ayah.versesTextArab,
                  textDirection: TextDirection.rtl,
                  style:
                      TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Text(
                ayah.versesTranslationId,
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 16.h,
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildAyahListError(errorMessage) {
    return Center(
      child: IconButton(
        onPressed: () async => await controller.getAyahBySurahNumber(),
        icon: Icon(
          Icons.replay,
          size: 24.h,
        ),
      ),
    );
  }

  ListView _buildAyahListLoading() {
    return ListView.separated(
      itemCount: 10,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (BuildContext context, int index) {
        return Container(
          height: 4.h,
        );
      },
      itemBuilder: (BuildContext context, int index) {
        return BoxPlaceholder(
          width: double.infinity,
          height: 64.h,
        );
      },
    );
  }

  Widget _buildBanner() {
    return Container(
      // width: double.infinity,
      decoration: BoxDecoration(
        image: const DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(
            AppAssets.imgBannerHome,
          ),
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(
            16.r,
          ),
        ),
      ),
      child: Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(
              16.r,
            ),
          ),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              const Color(0xFFDF98FA),
              const Color(0xFF9055FF).withOpacity(0.5),
            ],
          ),
        ),
        child: Padding(
            padding: EdgeInsets.symmetric(vertical: 28.h),
            child: controller.obx(
              (listAyah) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '${listAyah?.first.nameTransliterationId}',
                      style: TextStyle(
                        fontSize: 26.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    Text(
                      '${listAyah?.first.nameTranslationId}',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 63.w,
                        ),
                        const Expanded(
                          child: Divider(
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 63.w,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Text(
                      '${listAyah?.first.relevationId} - ${listAyah?.first.numberOfVerses} ayat',
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 32.sp,
                    ),
                    Text(
                      'بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ',
                      style: TextStyle(
                        fontSize: 32.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ],
                );
              },
              onError: (error) => const SizedBox.shrink(),
              onLoading: const SizedBox.shrink(),
              onEmpty: const SizedBox.shrink(),
            )
            // Obx(() {
            //   if (controller.state == BaseState.success &&
            //       controller.listAyat.isNotEmpty) {
            //     return Column(
            //       crossAxisAlignment: CrossAxisAlignment.center,
            //       mainAxisAlignment: MainAxisAlignment.center,
            //       children: [
            //         Text(
            //           controller.listAyat.first.nameTransliterationId,
            //           style: TextStyle(
            //             fontSize: 26.sp,
            //             fontWeight: FontWeight.w500,
            //             color: Colors.white,
            //           ),
            //         ),
            //         SizedBox(
            //           height: 4.h,
            //         ),
            //         Text(
            //           controller.listAyat.first.nameTranslationId,
            //           style: TextStyle(
            //             fontSize: 16.sp,
            //             fontWeight: FontWeight.w500,
            //             color: Colors.white,
            //           ),
            //         ),
            //         SizedBox(
            //           height: 16.h,
            //         ),
            //         Row(
            //           children: [
            //             SizedBox(
            //               width: 63.w,
            //             ),
            //             const Expanded(
            //               child: Divider(
            //                 color: Colors.white,
            //               ),
            //             ),
            //             SizedBox(
            //               width: 63.w,
            //             ),
            //           ],
            //         ),
            //         SizedBox(
            //           height: 16.h,
            //         ),
            //         Text(
            //           '${controller.listAyat.first.relevationId} - ${controller.listAyat.first.numberOfVerses} ayat',
            //           style: TextStyle(
            //             fontSize: 14.sp,
            //             fontWeight: FontWeight.w500,
            //             color: Colors.white,
            //           ),
            //         ),
            //         SizedBox(
            //           height: 32.sp,
            //         ),
            //         Text(
            //           'بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ',
            //           style: TextStyle(
            //             fontSize: 32.sp,
            //             fontWeight: FontWeight.w500,
            //             color: Colors.white,
            //           ),
            //         ),
            //       ],
            //     );
            //   } else {
            //     return Container();
            //   }
            // }),
            ),
      ),
    );
  }

  void _showTafsirBottomsheet(String tafsirShortId) {
    Get.bottomSheet(
      SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(24.r),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16.r),
              topRight: Radius.circular(16.r),
            ),
          ),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'Tafsir:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  tafsirShortId,
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
                        // backgroundColor: MaterialStatePropertyAll(textColor1),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ))),
                    onPressed: () => Get.back(),
                    child: const Text(
                      'Kembali',
                      style: TextStyle(
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

  // Widget _buildNavBar() {
  //   return Row(
  //     children: [
  //       IconButton(
  //         onPressed: () => Get.back(),
  //         tooltip: 'Kembali',
  //         icon: Icon(
  //           Icons.arrow_back,
  //           size: 24.w,
  //         ),
  //       ),
  //       Obx(() {
  //         if (controller.state == BaseState.loading) {
  //           return BoxPlaceholder(
  //             height: 24.h,
  //           );
  //         } else if (controller.state == BaseState.error) {
  //           return Text(
  //             '-',
  //             style: TextStyle(
  //               fontSize: 20.sp,
  //             ),
  //           );
  //         } else if (controller.state == BaseState.success) {
  //           return Text(
  //             '${controller.listAyat.firstOrNull?.nameTransliterationId}',
  //             style: TextStyle(
  //               // color: textColor1,
  //               fontSize: 20.sp,
  //               fontWeight: FontWeight.bold,
  //             ),
  //           );
  //         } else {
  //           return Text(
  //             '-',
  //             style: TextStyle(
  //               fontSize: 20.sp,
  //             ),
  //           );
  //         }
  //       }),
  //       const Spacer(),
  //       IconButton(
  //         onPressed: () {},
  //         icon: Icon(
  //           Icons.info_outline,
  //           size: 24.w,
  //           color: AppColors.primaryContainer,
  //         ),
  //       ),
  //     ],
  //   );
  // }
}

class AudioPlayerWidget extends GetView<AudioController> {
  const AudioPlayerWidget({
    super.key,
    required this.index,
    required this.ayah,
  });

  final int index;
  final SurahDetail ayah;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      tooltip: 'Play/Stop',
      onPressed: () async =>
          await controller.onAudioPressed(index, ayah.versesAudioPrimary),
      icon: Obx(() => Icon(
            controller.selectedAudioIdx == index
                ? Icons.pause_circle_outline
                : Icons.play_circle_outline,
            color: AppColors.primaryContainer,
            size: 24.w,
          )),
    );
  }
}
