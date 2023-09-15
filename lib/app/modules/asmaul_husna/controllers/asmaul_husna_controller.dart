import 'package:get/get.dart';
import 'package:suji/app/domain/entities/asmaul_husna.dart';
import 'package:suji/app/domain/usescases/get_asmaul_husna_usecase.dart';
import 'package:suji/app/widgets/custom_snackbar.dart';

class AsmaulHusnaController extends GetxController
    with StateMixin<List<AsmaulHusna>> {
  final GetAsmaulHusnaUsecase getAsmaulHusnaUsecase;

  AsmaulHusnaController({required this.getAsmaulHusnaUsecase});

  @override
  void onInit() async {
    super.onInit();
    await getAsmaulHusna();
  }

  /// get data asmaul husna from repository
  Future<void> getAsmaulHusna() async {
    change([], status: RxStatus.loading());
    final result = await getAsmaulHusnaUsecase.invoke();

    result.fold((failure) {
      showErrorMessage(failure.message);
      change([], status: RxStatus.error(failure.message));
    }, (result) {
      change(result, status: RxStatus.success());
    });
  }
}
