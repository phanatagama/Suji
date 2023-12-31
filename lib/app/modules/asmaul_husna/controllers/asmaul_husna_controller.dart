import 'package:get/get.dart';
import 'package:suji/app/domain/entities/asmaul_husna.dart';
import 'package:suji/app/domain/usescases/get_asmaul_husna_usecase.dart';
import 'package:suji/app/widgets/custom_snackbar.dart';

class AsmaulHusnaController extends GetxController
    with StateMixin<List<AsmaulHusna>> {
  final GetAsmaulHusnaUsecase getAsmaulHusnaUsecase;
  AsmaulHusnaController({required this.getAsmaulHusnaUsecase});

  // final _state = BaseState.empty.obs;
  // get state => _state.value;

  // final _message = ''.obs;
  // String get message => _message.value;

  // final RxList<AsmaulHusna> _dataAsmaulHusna = <AsmaulHusna>[].obs;
  // get dataAsmaulHusna => _dataAsmaulHusna;

  @override
  void onInit() async {
    super.onInit();
    await getAsmaulHusna();
  }

  /// get data asmaul husna from repository
  Future<void> getAsmaulHusna() async {
    // _state.value = BaseState.loading;
    change([], status: RxStatus.loading());
    final result = await getAsmaulHusnaUsecase.invoke();

    result.fold((failure) {
      // _message.value = l.toString();
      // _state.value = BaseState.error;
      showErrorMessage(failure.message);
      change([], status: RxStatus.error(failure.message));
    }, (result) {
      // _dataAsmaulHusna.assignAll(r);
      // _state.value = BaseState.success;
      change(result, status: RxStatus.success());
    });
  }
}
