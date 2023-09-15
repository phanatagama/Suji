import 'package:get/get.dart';
import 'package:suji/app/modules/asmaul_husna/bindings/asmaul_husna_binding.dart';
import 'package:suji/app/modules/asmaul_husna/views/asmaul_husna_view.dart';
import 'package:suji/app/modules/lab_ui.dart';
import 'package:suji/app/modules/menu/bindings/menu_binding.dart';
import 'package:suji/app/modules/menu/views/menu_view.dart';
import 'package:suji/app/modules/search/bindings/search_binding.dart';
import 'package:suji/app/modules/search/views/search_view.dart';
import 'package:suji/app/modules/shalat/bindings/shalat_binding.dart';
import 'package:suji/app/modules/shalat/views/shalat_view.dart';
import 'package:suji/app/modules/tasbih/bindings/tasbih_binding.dart';
import 'package:suji/app/modules/tasbih/views/tasbih_view.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/surah/bindings/surah_binding.dart';
import '../modules/surah/views/surah_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;
  static const menu = '/menu';
  static const lab = '/lab';
  static const shalat = '/shalat';
  static const search = '/search';
  static const tasbih = '/tasbih';
  static const asmaulHusna = '/asmaul-husna';

  static final routes = [
    // the LabView is for temporary directive UI Route
    GetPage(name: lab, page: () => const Lab()),
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: '${_Paths.SURAH}/:number',
      page: () => const SurahView(),
      binding: SurahBinding(),
    ),
    GetPage(
      name: search,
      page: () => const SearchView(),
      binding: SearchBinding(),
    ),
    GetPage(
      name: shalat,
      page: () => ShalatView(),
      binding: ShalatBinding(),
    ),
    GetPage(
      name: menu,
      page: () => const MenuView(),
      binding: MenuBinding(),
    ),
    GetPage(
      name: tasbih,
      page: () => const TasbihView(),
      binding: TasbihBinding(),
    ),
    GetPage(
      name: asmaulHusna,
      page: () => const AsmaulHusnaView(),
      binding: AsmaulHusnaBinding(),
    ),
  ];
}
