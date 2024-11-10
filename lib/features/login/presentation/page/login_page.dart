import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tots_material/main.dart';
import 'package:tots_material/utils/logos/tots_logos.dart';
import 'package:tots_material/widgets/inputs/input_text_principal.dart';
import 'package:tots_minimal_test/features/login/getx/login_controller.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundForms(),
          GetBuilder<LoginController>(builder: (_) {
            return Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    TOTSLogo.logoMinimal,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    'LOG IN',
                    style: TotsTextStyles.loginTItle,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  InputTextPrincipal(
                    labelText: 'Mail',
                    errorText: _.errorEmail,
                    controller: email,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InputTextPrincipal(
                    labelText: 'Password',
                    controller: password,
                    isPassword: true,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ButtonPrincipal(
                    load: _.isLoadLogin,
                    title: 'LOG IN',
                    onPressed: () {
                      _.login(
                        email: email.text,
                        password: password.text,
                      );
                    },
                  )
                ],
              ),
            );
          })
        ],
      ),
    );
  }
}
