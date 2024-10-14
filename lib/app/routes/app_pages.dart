import 'package:get/get.dart';

import '../modules/awal/views/awal_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.AWAL;

  static final routes = [
    GetPage(
      name: _Paths.AWAL,
      page: () => awalview(),
    ),
  ];
}
