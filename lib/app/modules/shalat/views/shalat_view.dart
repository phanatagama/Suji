import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:suji/app/modules/shalat/controllers/notification_controller.dart';
import 'package:suji/app/modules/shalat/controllers/shalat_controller.dart';
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
        Container(
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
                      Icons.arrow_back,
                      size: 24.0,
                      // color: scaffoldColor,
                    )),
              ),
              const SizedBox(
                height: 8.0,
              ),
              Text(
                'prayer time'.tr,
                style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Obx(() => Text(
                        '${controller.shalat.metaTimezone}',
                        style: const TextStyle(
                            fontSize: 16.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )),
                  IconButton(
                    onPressed: () async {
                      await controller.refreshLocation();
                    },
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
                'shalat motivation'.tr,
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
            child: Container(
                width: Get.width * .8,
                height: 64.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100.0),
                ),
                child: Center(
                  child: Obx(() => Text(
                        '${controller.shalat.dateReadable}',
                        style: const TextStyle(
                            fontSize: 24.0, fontWeight: FontWeight.bold),
                      )),
                )),
          ),
        ),
        Positioned(
          top: 8.0,
          right: 8.0,
          child: Obx(() {
            if (notificationController.isAlarmActive) {
              return IconButton(
                onPressed: () async {
                  notificationController.setAlarm(controller.shalat);
                  // final notificationService = NotificationService();
                  // await notificationService.showNotification(flutterLocalNotificationsPlugin);
                },
                tooltip: 'Alarm',
                icon: const Icon(
                  Icons.notifications_active_outlined,
                  size: 48.0,
                  color: Colors.white,
                ),
              );
            } else {
              return IconButton(
                onPressed: () {
                  notificationController.setAlarm(controller.shalat);
                },
                tooltip: 'Alarm',
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
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
          margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 2.0),
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
              const Spacer(),
              const Text(
                'Shubuh',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              Obx(() => Text(
                    '${controller.shalat.timingsFajr}',
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold),
                  )),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
          margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 2.0),
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
              const Spacer(),
              const Text(
                'Dzuhur',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              Obx(() => Text(
                    '${controller.shalat.timingsDhuhr}',
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold),
                  )),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
          margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 2.0),
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
              const Spacer(),
              const Text(
                'Ashar',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              Obx(() => Text(
                    '${controller.shalat.timingsAsr}',
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold),
                  )),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
          margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 2.0),
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
              const Spacer(),
              const Text(
                'Maghrib',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              Obx(() => Text(
                    '${controller.shalat.timingsMaghrib}',
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold),
                  )),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
          margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 2.0),
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
              const Spacer(),
              const Text(
                'Isha',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              Obx(() => Text(
                    '${controller.shalat.timingsIsha}',
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold),
                  )),
            ],
          ),
        ),
      ],
    );
  }
}
