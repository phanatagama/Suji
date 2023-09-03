import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:suji/app/domain/entities/surah.dart';
import 'package:suji/app/domain/repository/surah_repository.dart';
import 'package:suji/core/theme/colors.dart';
import 'package:suji/core/utils/base_state.dart';

class MySearchController extends GetxController {
  final SurahRepository surahRepository = Get.find<SurahRepository>();

  final TextEditingController searchBarController = TextEditingController();
  final _isTyping = false.obs;
  bool get isTyping => _isTyping.value;

  final _state = BaseState.empty.obs;
  BaseState get state => _state.value;

  final RxList<Surah> _listSurah = <Surah>[].obs;
  List<Surah> get listSurah => _listSurah;

  @override
  void onInit() {
    super.onInit();
    getAllSurah();
  }

  @override
  void dispose() {
    searchBarController.dispose();
    super.dispose();
  }

  void isTypingCheck() {
    _isTyping.value = searchBarController.text.isNotEmpty;
  }

  void resetSearchBar() {
    searchBarController.text = '';
    isTypingCheck();
    getSurahByQuery();
  }

  Future<void> getAllSurah() async {
    _state.value = BaseState.loading;
    final result = await surahRepository.getAllSurah();

    result.fold((failure) {
      _state.value = BaseState.error;
      Get.snackbar('Information', failure.message,
      snackPosition: SnackPosition.BOTTOM,
      margin: const EdgeInsets.all(8.0),
      backgroundColor: AppColors.error);
    }, (surahData) {
      _listSurah.assignAll(surahData);
      _state.value = BaseState.success;
    });
  }

  Future<void> getSurahByQuery() async {
    _state.value = BaseState.loading;
    final result =
        await surahRepository.getSurahByQuery(searchBarController.text);

    result.fold((failure) {
      _state.value = BaseState.error;
      Get.snackbar('Information', failure.message,
      snackPosition: SnackPosition.BOTTOM,
      margin: const EdgeInsets.all(8.0),
      backgroundColor: AppColors.error
      );
    }, (surahData) {
      _listSurah.assignAll(surahData);
      _state.value = BaseState.success;
    });
  }
}
