import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:suji/core/theme/colors.dart';

import 'package:sklite/SVM/SVM.dart';
import 'package:sklite/utils/io.dart';
import 'dart:convert';

import 'package:suji/core/utils/logger.dart';

class Lab extends StatefulWidget {
  Lab({super.key});

  @override
  State<Lab> createState() => _LabState();
}

class _LabState extends State<Lab> {

  // double heroItemHeight = 100;
  List<double> dataImage = [
    0.03316327,
    0.00455927,
    0.04498978,
    0.02641879,
    0.08202388,
    0.75096556,
    0.22602083,
    0.03840632,
    0.02575107,
    0.02879327,
    0.09385351,
    0.0621526,
    0.02576809,
    0.04793609,
    0.04793609,
    0.02321429,
    0.02209302,
    0.02209302,
    0.55149208,
    0.02098601,
    0.27913858,
    0.03028009,
    0.00575185,
    0.24807552,
    0.06114732,
    0.0621526,
    0.16943942,
    0.00104657,
    0.00104657,
    0.22940744,
    0.26001466,
    0.04238588,
    0.00240964,
    0.11270492,
    0.6150312,
    0.00928998,
    0.25730633,
    0.06803631,
    0.91335248
  ];

  List<double> dataImage2 = [0.28741497, .0        , 0.22563054, 0.08317025, .0        ,
        0.94833635, 0.35817974, 0.06317301, 0.14216738, 0.07570366,
        .0        , .0        , 0.14271556, 0.18175766, 0.18175766,
        0.07857143, 0.16550388, 0.16550388, 0.91751611, .0        ,
        0.24689872, 0.25018925, .0        , 0.18990212, 0.11577795,
        .0        , 0.10189997, .0        , .0        , 0.1545808 ,
        0.40186217, 0.03970081, .0        , 0.20081967, 0.90792542,
        0.00796284, 0.39181199, 0.06591994, 0.92062445];
  Future<void> predictImage(data) async {
    final model = await loadModel('assets/model/model.json');
    final svc = SVC.fromMap(json.decode(model));
    final result = svc.predict(data);
    Log.d('[HASIL PREDIKSI]', result.toString());
    Log.d('[MODEL]', model.toString());
    Get.snackbar('Hasil Prediksi', result.toString());
  }

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
                          onPressed: () async{
                            await predictImage(dataImage);
                          },
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
                          onPressed: () async{
                            await predictImage(dataImage2);
                          },
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
}
