import 'package:flutter/material.dart';
import 'package:tots_material/main.dart';
import 'package:tots_material/utils/logos/tots_logos.dart';
import 'package:tots_material/widgets/inputs/input_text_principal.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundForms(),
          Container(
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
                  controller: email,
                ),
                const SizedBox(
                  height: 20,
                ),
                InputTextPrincipal(
                  labelText: 'Password',
                  controller: email,
                  isPassword: true,
                ),
                const SizedBox(
                  height: 30,
                ),
                ButtonPrincipal(
                  load: false,
                  title: 'LOG IN',
                  onPressed: () {},
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
