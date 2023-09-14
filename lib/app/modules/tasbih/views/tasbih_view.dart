import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:suji/app/modules/tasbih/controllers/tasbih_controller.dart';
import 'package:suji/core/theme/colors.dart';

class TasbihView extends GetView<TasbihController> {
  const TasbihView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Tasbih Digital',
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
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: const EdgeInsets.all(8.0),
                // color: Colors.green,
                child: Center(
                  child: Obx(() => Text('${controller.counter}',
                      style: Get.textTheme.displayLarge?.copyWith(
                          fontSize: 46.0,
                          color: controller.counter >= controller.target
                              ? Colors.red
                              : null))),
                ),
              ),
              _buildCounterButton(),
              const SizedBox(
                height: 8.0,
              ),
              Flexible(
                fit: FlexFit.loose,
                child: Container(
                  width: double.infinity,
                  decoration:
                      const BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                      blurRadius: 8.0,
                      offset: Offset(0.0, -6.0),
                      color: Colors.black12,
                    )
                  ]),
                  padding: const EdgeInsets.only(
                    top: 16.0,
                    bottom: 16.0,
                  ),
                  child: Text('tasbih_description'.tr,
                      textAlign: TextAlign.center,
                      style: Get.textTheme.titleMedium),
                ),
              ),
              Flexible(
                fit: FlexFit.loose,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // color: Colors.red,
                      margin: const EdgeInsets.only(
                        left: 16.0,
                      ),
                      child: Text('goal'.tr,
                          textAlign: TextAlign.start,
                          style: Get.textTheme.titleLarge),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      // color: Colors.orange,
                      child: TextFormField(
                        controller: controller.textEditingController,
                        onChanged: controller.onChangedTextField,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        decoration: InputDecoration(
                          fillColor: Colors.black12,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: const BorderSide(
                              color: Colors.black12,
                            ),
                          ),
                          // helperText: 'Masukkan targetmu',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Flexible(
                fit: FlexFit.loose,
                child: Container(
                  // height: 100.0,
                  padding: const EdgeInsets.all(8.0),
                  // color: Colors.red,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: InkWell(
                            key: const Key('TargetButton11'),
                            onTap: () {
                              controller.target = 11;
                            },
                            child: Obx(() => Container(
                                  padding: const EdgeInsets.all(16.0),
                                  decoration: BoxDecoration(
                                    color: controller.target == 11
                                        ? AppColors.primary
                                        : Colors.grey,
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  child: const Text(
                                    '11',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16.0,
                                    ),
                                  ),
                                )),
                          ),
                        ),
                        const SizedBox(
                          width: 8.0,
                        ),
                        Expanded(
                          child: InkWell(
                            key: const Key('TargetButton33'),
                            onTap: () {
                              controller.target = 33;
                            },
                            child: Obx(() => Container(
                                  padding: const EdgeInsets.all(16.0),
                                  decoration: BoxDecoration(
                                    color: controller.target == 33
                                        ? AppColors.primary
                                        : Colors.grey,
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  child: const Text(
                                    '33',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16.0,
                                    ),
                                  ),
                                )),
                          ),
                        ),
                        const SizedBox(
                          width: 8.0,
                        ),
                        Expanded(
                          child: InkWell(
                            key: const Key('TargetButton99'),
                            onTap: () {
                              controller.target = 99;
                            },
                            child: Obx(() => Container(
                                  padding: const EdgeInsets.all(16.0),
                                  decoration: BoxDecoration(
                                    color: controller.target == 99
                                        ? AppColors.primary
                                        : Colors.grey,
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  child: const Text(
                                    '99',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16.0,
                                    ),
                                  ),
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // Flexible(
              //   fit: FlexFit.loose,
              //   child: Container(
              //     height: 100.0,
              //     color: AppColors.primary,
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCounterButton() {
    return SizedBox(
      height: 275.0,
      child:
          Stack(fit: StackFit.expand, alignment: Alignment.center, children: [
        Positioned(
          left: 0,
          right: 0,
          child: ElevatedButton(
            key: const Key('IncreaseButton'),
            onPressed: () {
              controller.counter++;
            },
            style: ButtonStyle(
                shadowColor: MaterialStateProperty.all(Colors.black),
                shape: MaterialStateProperty.all(const CircleBorder(
                    side: BorderSide(color: AppColors.onPrimary, width: 2.0)))),
            child: const Icon(
              Icons.keyboard_arrow_up,
              size: 200.0,
              color: AppColors.background,
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          child: ElevatedButton(
            key: const Key('DecreaseButton'),
            onPressed: () {
              controller.counter--;
            },
            style: ButtonStyle(
                shape: MaterialStateProperty.all(const CircleBorder(
                    side:
                        BorderSide(color: AppColors.background, width: 2.0)))),
            child: const Icon(
              Icons.keyboard_arrow_down,
              color: AppColors.background,
              size: 25.0,
            ),
          ),
        ),
        Positioned(
          top: 0,
          child: ElevatedButton(
            key: const Key('ResetButton'),
            onPressed: () {
              controller.counter = 0;
            },
            style: ButtonStyle(
                shape: MaterialStateProperty.all(const CircleBorder(
                    side:
                        BorderSide(color: AppColors.background, width: 2.0)))),
            child: const Icon(
              Icons.restart_alt,
              color: AppColors.background,
              size: 25.0,
            ),
          ),
        ),
      ]),
    );
  }

  // Stack _buildHeroItem() {
  //   return Stack(
  //     // fit: StackFit.expand,
  //     children: [
  //       Container(
  //         height: Get.height * 0.2,
  //         decoration: const BoxDecoration(
  //           color: Colors.orange,
  //         ),
  //       ),
  //       Transform.translate(
  //         offset: const Offset(0.0, 100),
  //         child: Center(
  //           child: Container(
  //             width: Get.width * 0.8,
  //             padding: const EdgeInsets.all(8.0),
  //             decoration: const BoxDecoration(
  //               color: Colors.white,
  //               boxShadow: [
  //                 BoxShadow(
  //                     color: Colors.black12,
  //                     blurRadius: 16.0,
  //                     offset: Offset(.0, 6.0))
  //               ],
  //               borderRadius: BorderRadius.all(
  //                 Radius.circular(
  //                   8.0,
  //                 ),
  //               ),
  //             ),
  //             child: SingleChildScrollView(
  //               scrollDirection: Axis.horizontal,
  //               controller: ScrollController(),
  //               child: Row(
  //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                 mainAxisSize: MainAxisSize.min,
  //                 children: [
  //                   Container(
  //                     width: 100,
  //                     color: Colors.green,
  //                     child: const Column(
  //                       mainAxisAlignment: MainAxisAlignment.center,
  //                       children: [
  //                         Icon(
  //                           Icons.photo_camera_outlined,
  //                           size: 20.0,
  //                           color: Colors.red,
  //                         ),
  //                         Text(
  //                           'Jadwal Shalat',
  //                           maxLines: 2,
  //                           overflow: TextOverflow.ellipsis,
  //                           textAlign: TextAlign.center,
  //                         ),
  //                       ],
  //                     ),
  //                   ),
  //                   Container(
  //                     width: 100,
  //                     color: Colors.green,
  //                     child: const Column(
  //                       mainAxisAlignment: MainAxisAlignment.center,
  //                       children: [
  //                         Icon(
  //                           Icons.photo_camera_outlined,
  //                           size: 20.0,
  //                           color: Colors.red,
  //                         ),
  //                         Text(
  //                           'Jadwal Shalat',
  //                           maxLines: 2,
  //                           overflow: TextOverflow.ellipsis,
  //                           textAlign: TextAlign.center,
  //                         ),
  //                       ],
  //                     ),
  //                   ),
  //                   Container(
  //                     width: 100,
  //                     color: Colors.green,
  //                     child: const Column(
  //                       mainAxisAlignment: MainAxisAlignment.center,
  //                       children: [
  //                         Icon(
  //                           Icons.photo_camera_outlined,
  //                           size: 20.0,
  //                           color: Colors.red,
  //                         ),
  //                         Text(
  //                           'Jadwal Shalat',
  //                           maxLines: 2,
  //                           overflow: TextOverflow.ellipsis,
  //                           textAlign: TextAlign.center,
  //                         ),
  //                       ],
  //                     ),
  //                   ),
  //                   Container(
  //                     width: 100,
  //                     color: Colors.green,
  //                     child: const Column(
  //                       mainAxisAlignment: MainAxisAlignment.center,
  //                       children: [
  //                         Icon(
  //                           Icons.photo_camera_outlined,
  //                           size: 20.0,
  //                           color: Colors.red,
  //                         ),
  //                         Text(
  //                           'Jadwal Shalat',
  //                           maxLines: 2,
  //                           overflow: TextOverflow.ellipsis,
  //                           textAlign: TextAlign.center,
  //                         ),
  //                       ],
  //                     ),
  //                   ),
  //                 ],
  //               ),
  //             ),
  //           ),
  //         ),
  //       ),
  //     ],
  //   );
  // }
}
