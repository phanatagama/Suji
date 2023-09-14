import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:suji/app/domain/entities/surah.dart';
import 'package:suji/app/domain/usescases/get_all_surah_usecase.dart';
import 'package:suji/app/widgets/custom_snackbar.dart';

class HomeController extends GetxController with StateMixin<List<Surah>> {
  final GetAllSurahUsecase getAllSurahUsecase;
  Box box = Hive.box('sujiSettingsBox');

  HomeController({required this.getAllSurahUsecase});

  // final _state = BaseState.empty.obs;
  // BaseState get state => _state.value;

  // final _message = ''.obs;
  // String get message => _message.value;

  // final RxList<Surah> _listSurah = <Surah>[].obs;
  // List<Surah> get listSurah => _listSurah;

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
    _lastRead.value = box.get('lastRead');
  }

  /// get all surah
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
}
