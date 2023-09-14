import 'package:get/get.dart';
import 'package:suji/app/domain/entities/surah_detail.dart';
import 'package:suji/app/domain/usescases/get_ayah_by_surah_number_usecase.dart';
import 'package:suji/app/widgets/custom_snackbar.dart';

class SurahController extends GetxController
    with StateMixin<List<SurahDetail>> {
  final GetAyahBySurahNumberUsecase getAyahBySurahNumberUsecase;

  SurahController({required this.getAyahBySurahNumberUsecase});

  // final _state = BaseState.empty.obs;
  // BaseState get state => _state.value;

  // final _message = ''.obs;
  // String get message => _message.value;

  // final List<SurahDetail> _listAyat = <SurahDetail>[].obs;
  // List<SurahDetail> get listAyat => _listAyat;

  @override
  void onInit() async {
    super.onInit();
    await getAyahBySurahNumber();
  }

  /// get all ayah by surah number
  Future<void> getAyahBySurahNumber() async {
    // _state.value = BaseState.loading;
    change([], status: RxStatus.loading());
    final result = await 
        getAyahBySurahNumberUsecase.invoke(int.parse(Get.parameters['number']!));

    result.fold((failure) {
      // _message.value = failure.message;
      // _state.value = BaseState.error;
      showErrorMessage(failure.message);
      change([], status: RxStatus.error(failure.message));
    }, (surahData) {
      // _listAyat.assignAll(surahData);
      // _state.value = BaseState.success;
      change(surahData, status: RxStatus.success());
    });
  }
}
