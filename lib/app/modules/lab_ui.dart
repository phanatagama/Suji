import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:suji/core/theme/colors.dart';

class Lab extends StatelessWidget {
  const Lab({super.key});
  // double heroItemHeight = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(
          'Tasbih Digital',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.0,
          ),
        ),
        leading: const Icon(
          Icons.arrow_back_ios,
          color: AppColors.background,
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
                  child: Text('1',
                      style: Get.textTheme.displayLarge?.copyWith(
                        fontSize: 46.0,
                      )),
                ),
              ),
              SizedBox(
                height: 275.0,
                // color: Colors.blue,
                child: Stack(
                    fit: StackFit.expand,
                    alignment: Alignment.center,
                    children: [
                      Positioned(
                        left: 0,
                        right: 0,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                              shadowColor:
                                  MaterialStateProperty.all(Colors.black),
                              shape: MaterialStateProperty.all(
                                  const CircleBorder(
                                      side: BorderSide(
                                          color: AppColors.onPrimary,
                                          width: 2.0)))),
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
                          onPressed: () {},
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                  const CircleBorder(
                                      side: BorderSide(
                                          color: AppColors.background,
                                          width: 2.0)))),
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
                          onPressed: () {},
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                  const CircleBorder(
                                      side: BorderSide(
                                          color: AppColors.background,
                                          width: 2.0)))),
                          child: const Icon(
                            Icons.restart_alt,
                            color: AppColors.background,
                            size: 25.0,
                          ),
                        ),
                      ),
                    ]),
              ),
              Flexible(
                fit: FlexFit.loose,
                child: Container(
                  margin: const EdgeInsets.only(
                    top: 16.0,
                    bottom: 16.0,
                  ),
                  child: Text(
                      'Tasbih digital untuk membantu anda berdzikir setiap hari',
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
                      child: Text('Target',
                          textAlign: TextAlign.start,
                          style: Get.textTheme.titleLarge),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      // color: Colors.orange,
                      child: TextFormField(
                        initialValue: '11',
                        keyboardType:
                            const TextInputType.numberWithOptions(signed: true),
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: const BorderSide(
                              color: Colors.black12,
                            ),
                          ),
                          // helperText: 'Masukkan targetmu',
                        ),
                        onChanged: (value) {},
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(16.0),
                          margin: const EdgeInsets.symmetric(horizontal: 8.0),
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: const Text(
                            '11',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(16.0),
                          margin: const EdgeInsets.symmetric(horizontal: 8.0),
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: const Text(
                            '33',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(16.0),
                          margin: const EdgeInsets.symmetric(horizontal: 8.0),
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: const Text(
                            '99',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Flexible(
                fit: FlexFit.loose,
                child: Container(
                  height: 100.0,
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ),
      ),
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
