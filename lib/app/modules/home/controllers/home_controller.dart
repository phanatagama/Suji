import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:suji/app/domain/entities/surah.dart';
import 'package:suji/app/domain/usescases/get_all_surah_usecase.dart';
import 'package:suji/app/widgets/custom_snackbar.dart';

class HomeController extends GetxController with StateMixin<List<Surah>> {
  final GetAllSurahUsecase getAllSurahUsecase;
  final Box box = Hive.box('sujiSettingsBox');

  HomeController({required this.getAllSurahUsecase});

  final _lastRead = ''.obs;
  String get lastRead => _lastRead.value;

  @override
  void onInit() async {
    super.onInit();
    await getAllSurah();
    _lastRead.value = box.get('lastRead') ?? '-';
  }

  toSearchPage() async {
    await Get.toNamed('/search');
    _getLastRead();
  }

  /// set last read into Hive Box
  void setLastRead(String surahName) {
    box.put('lastRead', surahName);
    _getLastRead();
  }

  void _getLastRead() {
    _lastRead.value = box.get('lastRead') ?? '-';
  }

  /// get all surah
  Future<void> getAllSurah() async {
    change([], status: RxStatus.loading());
    final result = await getAllSurahUsecase.invoke();

    result.fold((failure) {
      showErrorMessage(failure.message);
      change([], status: RxStatus.error(failure.message));
    }, (surahData) {
      change(surahData, status: RxStatus.success());
    });
  }
}
