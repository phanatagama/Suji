import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Lab extends StatelessWidget {
  const Lab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      // backgroundColor: scaffoldColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
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
                    child: Image.asset('assets/images/salah_banner.png',
                        fit: BoxFit.cover),
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
                              onPressed: () {},
                              icon: const Icon(
                                Icons.arrow_back,
                                size: 24.0,
                                // color: scaffoldColor,
                              )),
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        const Text(
                          'Jadwal Sholat',
                          style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          'Surabaya',
                          style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 72.0,
                        ),
                        const Center(
                          child: Text(
                            'Shubuh 4:17 AM',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 24.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const Text(
                          'Yang membedakan antara orang beriman dengan tidak beriman adalah meninggalkan salat.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
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
                          child: const Center(
                            child: Text(
                              '30 September 2023',
                              style: TextStyle(
                                  fontSize: 24.0, fontWeight: FontWeight.bold),
                            ),
                          )),
                    ),
                  ),
                  Positioned(
                    top: 8.0,
                    right: 8.0,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.notifications,
                        size: 48.0,
                        color: Colors.white,
                      ),
                    ),
                  )
                ]),
              ),
              const SizedBox(
                height: 8.0,
              ),
              Column(
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
                    child: const Row(
                      children: [
                        ImageIcon(
                          AssetImage(
                            'assets/images/Shalat-Shubuh.png',
                          ),
                          size: 24.0,
                          color: Colors.white,
                        ),
                        Spacer(),
                        Text(
                          'Shubuh',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Text(
                          '04:48',
                          style: TextStyle(
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
                    child: const Row(
                      children: [
                        ImageIcon(
                          AssetImage(
                            'assets/images/Shalat-Zhuhur.png',
                          ),
                          size: 24.0,
                          color: Colors.white,
                        ),
                        Spacer(),
                        Text(
                          'Dzuhur',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Text(
                          '04:48',
                          style: TextStyle(
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
                    child: const Row(
                      children: [
                        ImageIcon(
                          AssetImage(
                            'assets/images/Shalat-Ashar.png',
                          ),
                          size: 24.0,
                          color: Colors.white,
                        ),
                        Spacer(),
                        Text(
                          'Ashar',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Text(
                          '04:48',
                          style: TextStyle(
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
                    child: const Row(
                      children: [
                        ImageIcon(
                          AssetImage(
                            'assets/images/Shalat-Maghrib.png',
                          ),
                          size: 24.0,
                          color: Colors.white,
                        ),
                        Spacer(),
                        Text(
                          'Maghrib',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Text(
                          '04:48',
                          style: TextStyle(
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
                    child: const Row(
                      children: [
                        ImageIcon(
                          AssetImage(
                            'assets/images/Shalat-Isya.png',
                          ),
                          size: 24.0,
                          color: Colors.white,
                        ),
                        Spacer(),
                        Text(
                          'Isya',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Text(
                          '04:48',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
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
}
