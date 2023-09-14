import 'package:freezed_annotation/freezed_annotation.dart';

part 'asmaul_husna.freezed.dart';

@freezed
class AsmaulHusna with _$AsmaulHusna {
    const AsmaulHusna._();
    factory AsmaulHusna({
        required String arabic,
        required String index,
        required String latin,
        required String translationEn,
        required String translationId,
    })  = _AsmaulHusna;
}
