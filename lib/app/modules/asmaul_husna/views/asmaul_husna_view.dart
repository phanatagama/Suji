import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:suji/app/modules/asmaul_husna/controllers/asmaul_husna_controller.dart';
import 'package:suji/app/widgets/box_placeholder.dart';
import 'package:suji/core/theme/colors.dart';
import 'package:suji/core/values/constant.dart';

class AsmaulHusnaView extends GetView<AsmaulHusnaController> {
  const AsmaulHusnaView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          AppString.asmaulHusna,
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
          ),
        ),
      ),
      body: SafeArea(
        child: controller.obx(
          _buildAsmaulHusnaSuccess,
          onLoading: _buildAsmaulHusnaLoading(),
          onError: _buildAsmaulHusnaError,
          onEmpty: const SizedBox.shrink(),
        ),
      ),
    );
  }

  Widget _buildAsmaulHusnaError(errorMessage) {
    return Center(
      child: IconButton(
        onPressed: () async => await controller.getAsmaulHusna(),
        icon: const Icon(
          Icons.replay,
          size: 24.0,
        ),
      ),
    );
  }

  GridView _buildAsmaulHusnaLoading() {
    return GridView.builder(
      padding: EdgeInsets.zero,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 1.0,
        crossAxisCount: 3,
        mainAxisSpacing: 6,
        crossAxisSpacing: 6,
      ),
      itemCount: 9,
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return const BoxPlaceholder(
          width: 64,
          height: 64,
        );
      },
    );
  }

  Widget _buildAsmaulHusnaSuccess(state) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          padding: EdgeInsets.zero,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 1.0,
            crossAxisCount: 3,
            mainAxisSpacing: 6,
            crossAxisSpacing: 6,
          ),
          itemCount: state?.length,
          shrinkWrap: true,
          physics: const ScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            final asmaulHusna = state![index];
            return Stack(
              children: [
                Container(
                  width: double.infinity,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: const [
                        BoxShadow(
                            blurRadius: 4.0,
                            color: Colors.black,
                            offset: Offset(0.0, 0.5))
                      ]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 3,
                        child: Container(
                          color: Colors.grey[100],
                          alignment: Alignment.bottomCenter,
                          child: AutoSizeText(
                            asmaulHusna.arabic,
                            maxLines: 2,
                            textAlign: TextAlign.center,
                            style: Get.textTheme.displayLarge?.copyWith(
                              color: AppColors.primary,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.center,
                          child: AutoSizeText(asmaulHusna.latin,
                              maxLines: 2,
                              textAlign: TextAlign.center,
                              style: Get.textTheme.bodyMedium?.copyWith(
                                color: Colors.white,
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: const BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        8.0,
                      ),
                    ),
                  ),
                  child: Text(
                    asmaulHusna.index,
                    style: const TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
