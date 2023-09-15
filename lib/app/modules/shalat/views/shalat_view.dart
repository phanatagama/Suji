import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:suji/app/modules/shalat/controllers/notification_controller.dart';
import 'package:suji/app/modules/shalat/controllers/shalat_controller.dart';
import 'package:suji/app/widgets/box_placeholder.dart';
import 'package:suji/core/theme/colors.dart';
import 'package:suji/core/values/constant.dart';

class ShalatView extends GetView<ShalatController> {
  ShalatView({super.key});

  final notificationController = Get.find<NotificationController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.onBackground,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _buildHeroShalat(),
              const SizedBox(
                height: 8.0,
              ),
              _buildPrayerTime(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeroShalat() {
    const double heightOfDateContainer = 48.0;
    return Container(
      width: Get.width,
      decoration: const BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.all(
          Radius.circular(
            8.0,
          ),
        ),
      ),
      child: Stack(children: [
        SizedBox(
          width: Get.width,
          child: Image.asset(AppAssets.imgBannerShalat, fit: BoxFit.cover),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: const ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12.0),
                      ),
                    )),
                child: IconButton(
                    onPressed: () => Get.back(),
                    icon: const Icon(
                      Icons.arrow_back_ios_new,
                    )),
              ),
              const SizedBox(
                height: 8.0,
              ),
              Text(
                'prayer_time'.tr,
                style: const TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  controller.obx(
                    (dataShalat) => Text(
                      dataShalat?.metaTimezone ?? '-',
                      style: const TextStyle(
                          fontSize: 16.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    onError: (_) => const Text(
                      '-',
                      style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  IconButton(
                    onPressed: () async => await controller.refreshLocation(),
                    icon: const Icon(
                      Icons.replay,
                      size: 24.0,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 64.0,
              ),
              Center(
                child: StreamBuilder(
                    stream: Stream.periodic(const Duration(seconds: 1)),
                    builder: (context, snapshot) {
                      return Text(
                        DateFormat('kk:mm:ss').format(DateTime.now()),
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 24.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      );
                    }),
              ),
              Text(
                'shalat_motivation'.tr,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 12.0,
                  fontStyle: FontStyle.italic,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Transform.translate(
              offset: const Offset(0.0, heightOfDateContainer / 2),
              child: Container(
                  width: Get.width * .6,
                  height: heightOfDateContainer,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100.0),
                      boxShadow: const [
                        BoxShadow(
                            color: AppColors.primary,
                            blurRadius: 16.0,
                            offset: Offset(0.0, 6.0)),
                      ]),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () async => controller.beforeDay(),
                          icon: const Icon(
                            Icons.arrow_back_ios_new,
                            size: 16.0,
                          ),
                        ),
                        controller.obx((state) {
                          return Text(
                            state?.dateReadable ?? '-',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                                fontSize: 24.0, fontWeight: FontWeight.bold),
                          );
                        }, onError: (_) => const SizedBox.shrink()),
                        IconButton(
                          onPressed: () async => controller.nextDay(),
                          icon: const Icon(
                            Icons.arrow_forward_ios,
                            size: 16.0,
                          ),
                        ),
                      ])),
            ),
          ),
        ),
        Positioned(
          top: 8.0,
          right: 8.0,
          child: Obx(() {
            if (notificationController.isAlarmActive) {
              return IconButton(
                onPressed: () => controller.status.isSuccess
                    ? notificationController.setAlarm(controller.state!)
                    : null,
                tooltip: AppString.alarm,
                icon: const Icon(
                  Icons.notifications_active_outlined,
                  size: 48.0,
                  color: Colors.white,
                ),
              );
            } else {
              return IconButton(
                onPressed: () => controller.status.isSuccess
                    ? notificationController.setAlarm(controller.state!)
                    : null,
                tooltip: AppString.alarm,
                icon: const Icon(
                  Icons.notifications_none_outlined,
                  size: 48.0,
                  color: Colors.white,
                ),
              );
            }
          }),
        )
      ]),
    );
  }

  Widget _buildPrayerTime() {
    return Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: controller.obx(
          (state) {
            final dataShalat = state;
            return Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 32.0),
                  margin: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 2.0),
                  decoration: ShapeDecoration(
                      color: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      )),
                  child: Row(
                    children: [
                      const ImageIcon(
                        AssetImage(
                          AppAssets.iconShalatShubuh,
                        ),
                        size: 24.0,
                        color: Colors.white,
                      ),
                      const SizedBox(width: 8),
                      const Text(
                        AppString.shubuh,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      Text(
                        '${dataShalat?.timingsFajr}',
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 32.0),
                  margin: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 2.0),
                  decoration: ShapeDecoration(
                      color: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      )),
                  child: Row(
                    children: [
                      const ImageIcon(
                        AssetImage(
                          AppAssets.iconShalatDzuhr,
                        ),
                        size: 24.0,
                        color: Colors.white,
                      ),
                      const SizedBox(width: 8),
                      const Text(
                        AppString.dzuhr,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      Text(
                        '${dataShalat?.timingsDhuhr}',
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 32.0),
                  margin: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 2.0),
                  decoration: ShapeDecoration(
                      color: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      )),
                  child: Row(
                    children: [
                      const ImageIcon(
                        AssetImage(
                          AppAssets.iconShalatAshr,
                        ),
                        size: 24.0,
                        color: Colors.white,
                      ),
                      const SizedBox(width: 8),
                      const Text(
                        AppString.ashr,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      Text(
                        '${dataShalat?.timingsAsr}',
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 32.0),
                  margin: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 2.0),
                  decoration: ShapeDecoration(
                      color: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      )),
                  child: Row(
                    children: [
                      const ImageIcon(
                        AssetImage(
                          AppAssets.iconShalatMaghrib,
                        ),
                        size: 24.0,
                        color: Colors.white,
                      ),
                      const SizedBox(width: 8),
                      const Text(
                        AppString.maghrib,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      Text(
                        '${dataShalat?.timingsMaghrib}',
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 32.0),
                  margin: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 2.0),
                  decoration: ShapeDecoration(
                      color: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      )),
                  child: Row(
                    children: [
                      const ImageIcon(
                        AssetImage(
                          AppAssets.iconShalatIsha,
                        ),
                        size: 24.0,
                        color: Colors.white,
                      ),
                      const SizedBox(width: 8),
                      const Text(
                        AppString.isha,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      Text(
                        '${dataShalat?.timingsIsha}',
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
          onError: (_) => const SizedBox.shrink(),
          onLoading: ListView.separated(
            itemCount: 5,
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            separatorBuilder: (BuildContext context, int index) {
              return Container(
                height: 4.0,
              );
            },
            itemBuilder: (BuildContext context, int index) {
              return const BoxPlaceholder(width: double.infinity);
            },
          ),
        )

        // Obx(() {
        //   if (controller.status.isLoading) {
        //     return const BoxPlaceholder(width: double.infinity);
        //   } else if (controller.status.isError) {
        //     Get.snackbar(
        //       'information'.tr,
        //       controller.status.errorMessage!,
        //       snackPosition: SnackPosition.BOTTOM,
        //       margin: const EdgeInsets.all(8.0),
        //       backgroundColor: AppColors.error,
        //     );
        //     return const SizedBox.shrink();
        //   } else if (controller.status.isSuccess) {
        //     final dataShalat = controller.state;
        //     return Column(
        //       children: [
        //         Container(
        //           padding: const EdgeInsets.symmetric(
        //               vertical: 16.0, horizontal: 32.0),
        //           margin:
        //               const EdgeInsets.symmetric(horizontal: 16.0, vertical: 2.0),
        //           decoration: ShapeDecoration(
        //               color: Colors.transparent,
        //               shape: RoundedRectangleBorder(
        //                 borderRadius: BorderRadius.circular(16.0),
        //               )),
        //           child: Row(
        //             children: [
        //               const ImageIcon(
        //                 AssetImage(
        //                   AppAssets.iconShalatShubuh,
        //                 ),
        //                 size: 24.0,
        //                 color: Colors.white,
        //               ),
        //               const Spacer(),
        //               const Text(
        //                 AppString.shubuh,
        //                 style: TextStyle(
        //                     color: Colors.white,
        //                     fontSize: 16.0,
        //                     fontWeight: FontWeight.bold),
        //               ),
        //               const Spacer(),
        //               Text(
        //                 '${dataShalat?.timingsFajr}',
        //                 style: const TextStyle(
        //                     color: Colors.white,
        //                     fontSize: 16.0,
        //                     fontWeight: FontWeight.bold),
        //               ),
        //             ],
        //           ),
        //         ),
        //         Container(
        //           padding: const EdgeInsets.symmetric(
        //               vertical: 16.0, horizontal: 32.0),
        //           margin:
        //               const EdgeInsets.symmetric(horizontal: 16.0, vertical: 2.0),
        //           decoration: ShapeDecoration(
        //               color: Colors.transparent,
        //               shape: RoundedRectangleBorder(
        //                 borderRadius: BorderRadius.circular(16.0),
        //               )),
        //           child: Row(
        //             children: [
        //               const ImageIcon(
        //                 AssetImage(
        //                   AppAssets.iconShalatDzuhr,
        //                 ),
        //                 size: 24.0,
        //                 color: Colors.white,
        //               ),
        //               const Spacer(),
        //               const Text(
        //                 AppString.dzuhr,
        //                 style: TextStyle(
        //                     color: Colors.white,
        //                     fontSize: 16.0,
        //                     fontWeight: FontWeight.bold),
        //               ),
        //               const Spacer(),
        //               Text(
        //                 '${dataShalat?.timingsDhuhr}',
        //                 style: const TextStyle(
        //                     color: Colors.white,
        //                     fontSize: 16.0,
        //                     fontWeight: FontWeight.bold),
        //               ),
        //             ],
        //           ),
        //         ),
        //         Container(
        //           padding: const EdgeInsets.symmetric(
        //               vertical: 16.0, horizontal: 32.0),
        //           margin:
        //               const EdgeInsets.symmetric(horizontal: 16.0, vertical: 2.0),
        //           decoration: ShapeDecoration(
        //               color: Colors.transparent,
        //               shape: RoundedRectangleBorder(
        //                 borderRadius: BorderRadius.circular(16.0),
        //               )),
        //           child: Row(
        //             children: [
        //               const ImageIcon(
        //                 AssetImage(
        //                   AppAssets.iconShalatAshr,
        //                 ),
        //                 size: 24.0,
        //                 color: Colors.white,
        //               ),
        //               const Spacer(),
        //               const Text(
        //                 AppString.ashr,
        //                 style: TextStyle(
        //                     color: Colors.white,
        //                     fontSize: 16.0,
        //                     fontWeight: FontWeight.bold),
        //               ),
        //               const Spacer(),
        //               Text(
        //                 '${dataShalat?.timingsAsr}',
        //                 style: const TextStyle(
        //                     color: Colors.white,
        //                     fontSize: 16.0,
        //                     fontWeight: FontWeight.bold),
        //               ),
        //             ],
        //           ),
        //         ),
        //         Container(
        //           padding: const EdgeInsets.symmetric(
        //               vertical: 16.0, horizontal: 32.0),
        //           margin:
        //               const EdgeInsets.symmetric(horizontal: 16.0, vertical: 2.0),
        //           decoration: ShapeDecoration(
        //               color: Colors.transparent,
        //               shape: RoundedRectangleBorder(
        //                 borderRadius: BorderRadius.circular(16.0),
        //               )),
        //           child: Row(
        //             children: [
        //               const ImageIcon(
        //                 AssetImage(
        //                   AppAssets.iconShalatMaghrib,
        //                 ),
        //                 size: 24.0,
        //                 color: Colors.white,
        //               ),
        //               const Spacer(),
        //               const Text(
        //                 AppString.maghrib,
        //                 style: TextStyle(
        //                     color: Colors.white,
        //                     fontSize: 16.0,
        //                     fontWeight: FontWeight.bold),
        //               ),
        //               const Spacer(),
        //               Text(
        //                 '${dataShalat?.timingsMaghrib}',
        //                 style: const TextStyle(
        //                     color: Colors.white,
        //                     fontSize: 16.0,
        //                     fontWeight: FontWeight.bold),
        //               ),
        //             ],
        //           ),
        //         ),
        //         Container(
        //           padding: const EdgeInsets.symmetric(
        //               vertical: 16.0, horizontal: 32.0),
        //           margin:
        //               const EdgeInsets.symmetric(horizontal: 16.0, vertical: 2.0),
        //           decoration: ShapeDecoration(
        //               color: Colors.transparent,
        //               shape: RoundedRectangleBorder(
        //                 borderRadius: BorderRadius.circular(16.0),
        //               )),
        //           child: Row(
        //             children: [
        //               const ImageIcon(
        //                 AssetImage(
        //                   AppAssets.iconShalatIsha,
        //                 ),
        //                 size: 24.0,
        //                 color: Colors.white,
        //               ),
        //               const Spacer(),
        //               const Text(
        //                 AppString.isha,
        //                 style: TextStyle(
        //                     color: Colors.white,
        //                     fontSize: 16.0,
        //                     fontWeight: FontWeight.bold),
        //               ),
        //               const Spacer(),
        //               Text(
        //                 '${dataShalat?.timingsIsha}',
        //                 style: const TextStyle(
        //                     color: Colors.white,
        //                     fontSize: 16.0,
        //                     fontWeight: FontWeight.bold),
        //               ),
        //             ],
        //           ),
        //         ),
        //       ],
        //     );
        //   } else {
        //     return const SizedBox.shrink();
        //   }
        // }),
        );
  }
}
