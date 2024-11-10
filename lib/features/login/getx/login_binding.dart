import 'package:get/get.dart';
import 'package:tots_minimal_test/features/login/getx/login_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController());
  }
}
