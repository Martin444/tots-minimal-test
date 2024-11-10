import 'package:get/get.dart';
import 'package:tots_minimal_api/features/auth/login/data/usecase/login_usecase.dart';
import 'package:tots_minimal_api/features/auth/login/model/user_success.dart';

class LoginController extends GetxController {
  bool isLoadLogin = false;
  String? errorEmail;
  Future<UserSuccess> login({
    required String email,
    required String password,
  }) async {
    try {
      isLoadLogin = true;
      update();
      var responLogin = await LoginUsecase().execute(
        email: email,
        password: password,
      );
      print(responLogin);
      return responLogin;
    } catch (e) {
      isLoadLogin = false;
      errorEmail = 'incorrect user credentials';
      update();
      throw e;
    }
  }
}
