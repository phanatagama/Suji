import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:suji/app/domain/entities/surah.dart';
import 'package:suji/app/domain/usescases/get_all_surah_usecase.dart';
import 'package:suji/app/domain/usescases/get_surah_by_query_usecase.dart';
import 'package:suji/app/widgets/custom_snackbar.dart';

class MySearchController extends GetxController with StateMixin<List<Surah>> {
  final GetSurahByQueryUsecase getSurahByQueryUsecase;
  final GetAllSurahUsecase getAllSurahUsecase;
  Box box = Hive.box('sujiSettingsBox');

  MySearchController(
      {required this.getSurahByQueryUsecase, required this.getAllSurahUsecase});

  final TextEditingController searchBarController = TextEditingController();
  final _isTyping = false.obs;
  bool get isTyping => _isTyping.value;

  // final _state = BaseState.empty.obs;
  // BaseState get state => _state.value;

  // final _message = ''.obs;
  // String get message => _message.value;

  // final RxList<Surah> _listSurah = <Surah>[].obs;
  // List<Surah> get listSurah => _listSurah;

  @override
  void onInit() async {
    super.onInit();
    await getAllSurah();
  }

  @override
  void dispose() {
    searchBarController.dispose();
    super.dispose();
  }

  void setLastRead(String surahName) {
    box.put('lastRead', surahName);
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
    // _state.value = BaseState.loading;
    change([], status: RxStatus.loading());
    final result = await getAllSurahUsecase.invoke();

    result.fold((failure) {
      // _message.value = failure.message;
      // _state.value = BaseState.error;
      showErrorMessage(failure.message);
      change([], status: RxStatus.error(failure.message));
    }, (surahData) {
      // _listSurah.assignAll(surahData);
      // _state.value = BaseState.success;
      change(surahData, status: RxStatus.success());
    });
  }

  Future<void> getSurahByQuery() async {
    // _state.value = BaseState.loading;
    change([], status: RxStatus.loading());
    final result =
        await getSurahByQueryUsecase.invoke(searchBarController.text);

    result.fold((failure) {
      // _message.value = failure.message;
      // _state.value = BaseState.error;
      showErrorMessage(failure.message);
      change([], status: RxStatus.error(failure.message));
    }, (surahData) {
      // _listSurah.assignAll(surahData);
      // _state.value = BaseState.success;
      change(surahData, status: RxStatus.success());
    });
  }
}
