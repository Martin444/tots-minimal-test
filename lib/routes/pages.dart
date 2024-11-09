import 'package:get/get.dart';
import 'package:tots_minimal_test/features/login/presentation/page/login_page.dart';
import 'package:tots_minimal_test/routes/routes.dart';

class TOTsPage {
  static final List<GetPage> listPages = [
    GetPage(
      name: TotsRoutes.LOGIN,
      page: () => const LoginPage(),
    )
  ];
}
