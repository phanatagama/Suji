import 'package:get/get.dart';
import 'package:suji/app/domain/entities/surah_detail.dart';
import 'package:suji/app/domain/usescases/get_ayah_by_surah_number_usecase.dart';
import 'package:suji/app/widgets/custom_snackbar.dart';

class SurahController extends GetxController
    with StateMixin<List<SurahDetail>> {
  final GetAyahBySurahNumberUsecase getAyahBySurahNumberUsecase;

  SurahController({required this.getAyahBySurahNumberUsecase});

  @override
  void onInit() async {
    super.onInit();
    await getAyahBySurahNumber();
  }

  /// get all ayah by surah number
  Future<void> getAyahBySurahNumber() async {
    change([], status: RxStatus.loading());
    final result = await getAyahBySurahNumberUsecase
        .invoke(int.parse(Get.parameters['number']!));

    result.fold((failure) {
      showErrorMessage(failure.message);
      change([], status: RxStatus.error(failure.message));
    }, (surahData) {
      change(surahData, status: RxStatus.success());
    });
  }
}
