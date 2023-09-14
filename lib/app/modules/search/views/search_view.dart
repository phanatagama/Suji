import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:suji/app/routes/app_pages.dart';
import 'package:suji/app/widgets/box_placeholder.dart';
import 'package:suji/core/theme/colors.dart';
import '../controllers/search_controller.dart';

class SearchView extends GetView<MySearchController> {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            _buildSearchBar(),
            const SizedBox(
              height: 8.0,
            ),
            _buildSearchResult(),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchResult() {
    return controller.obx(
      _buildSearchResultSuccess,
      onLoading: _buildSearchResultLoading(),
      onError: _buildSearchResultError,
      onEmpty: const SizedBox.shrink(),
    );
    // return Obx(() {
    //   if (controller.state == BaseState.loading) {
    //     return Expanded(
    //       child: ListView.separated(
    //         shrinkWrap: true,
    //         itemCount: 10,
    //         physics: const BouncingScrollPhysics(),
    //         separatorBuilder: (BuildContext context, int index) {
    //           return Container(
    //             height: 4.0,
    //           );
    //         },
    //         itemBuilder: (BuildContext context, int index) {
    //           return const BoxPlaceholder(width: double.infinity, height: 64.0);
    //         },
    //       ),
    //     );
    //   } else if (controller.state == BaseState.error) {
    //     Get.snackbar('information'.tr, controller.message,
    //       snackPosition: SnackPosition.BOTTOM,
    //       margin: const EdgeInsets.all(8.0),
    //       backgroundColor: AppColors.error);
    //     return Center(
    //       child: IconButton(
    //         onPressed: () async => await controller.getAllSurah(),
    //         icon: const Icon(
    //           Icons.replay,
    //           size: 24,
    //         ),
    //       ),
    //     );
    //   } else if (controller.state == BaseState.success) {
    //     return Expanded(
    //       child: ListView.builder(
    //         itemCount: controller.listSurah.length,
    //         physics: const BouncingScrollPhysics(),
    //         shrinkWrap: true,
    //         itemBuilder: (BuildContext context, int index) {
    //           final textTheme = Theme.of(context).textTheme;
    //           final surah = controller.listSurah[index];
    //           return InkWell(
    //             onTap: () => Get.toNamed('${Routes.SURAH}/${surah.number}'),
    //             child: Padding(
    //               padding: const EdgeInsets.symmetric(horizontal: 8.0),
    //               child: Card(
    //                 child: ListTile(
    //                   leading: CircleAvatar(
    //                     backgroundColor: Colors.transparent,
    //                     backgroundImage:
    //                         const AssetImage('assets/images/border_surah.png'),
    //                     child: Text(
    //                       '${surah.number}',
    //                       style: textTheme.titleLarge,
    //                     ),
    //                   ),
    //                   title: Text(surah.nameTransliterationId, style: textTheme.titleLarge,),
    //                   subtitle: Text('${surah.numberOfVerses} Ayat'),
    //                   trailing: Text(
    //                     surah.nameShort,
    //                     style: textTheme.headlineSmall?.copyWith(color: AppColors.primary),
    //                   ),
    //                 ),
    //               ),
    //             ),
    //           );
    //         },
    //       ),
    //     );
    //   } else {
    //     return const Center(
    //       child: Text(
    //         'Empty',
    //         style: TextStyle(
    //           fontSize: 16.0,
    //         ),
    //       ),
    //     );
    //   }
    // });
  }

  Widget _buildSearchResultError(errorMessage) {
    return Center(
      child: IconButton(
        onPressed: () async => await controller.getAllSurah(),
        icon: const Icon(
          Icons.replay,
          size: 24,
        ),
      ),
    );
  }

  Expanded _buildSearchResultLoading() {
    return Expanded(
      child: ListView.separated(
        shrinkWrap: true,
        itemCount: 10,
        physics: const BouncingScrollPhysics(),
        separatorBuilder: (BuildContext context, int index) {
          return Container(
            height: 4.0,
          );
        },
        itemBuilder: (BuildContext context, int index) {
          return const BoxPlaceholder(width: double.infinity, height: 64.0);
        },
      ),
    );
  }

  Widget _buildSearchResultSuccess(state) {
    return Expanded(
      child: ListView.builder(
        itemCount: state?.length,
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          final textTheme = Theme.of(context).textTheme;
          final surah = state![index];
          return InkWell(
            onTap: () {
              controller.setLastRead(surah.nameTransliterationId);
              Get.toNamed('${Routes.SURAH}/${surah.number}');
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Card(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    backgroundImage:
                        const AssetImage('assets/images/border_surah.png'),
                    child: Text(
                      '${surah.number}',
                      style: textTheme.titleLarge,
                    ),
                  ),
                  title: Text(
                    surah.nameTransliterationId,
                    style: textTheme.titleLarge,
                  ),
                  subtitle: Text('${surah.numberOfVerses} Ayat'),
                  trailing: Text(
                    surah.nameShort,
                    style: textTheme.headlineSmall
                        ?.copyWith(color: AppColors.primary),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildSearchBar() {
    return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          // borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              blurRadius: 5.0,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          children: [
            IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(
                Icons.arrow_back,
              ),
            ),
            Flexible(
              child: Obx(
                () => TextField(
                  autofocus: true,
                  onChanged: (_) {
                    controller.isTypingCheck();
                  },
                  onSubmitted: (_) {
                    controller.getSurahByQuery();
                  },
                  controller: controller.searchBarController,
                  decoration: InputDecoration(
                    hintText: 'Cari Surah',
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.blueGrey[900],
                    ),
                    suffixIcon: controller.isTyping
                        ? IconButton(
                            onPressed: () => controller.resetSearchBar(),
                            icon: const Icon(
                              Icons.close,
                            ),
                          )
                        : null,
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
