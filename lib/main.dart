import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tots_minimal_api/core/api.dart';
import 'package:tots_minimal_test/routes/pages.dart';
import 'package:tots_minimal_test/routes/routes.dart';

void main() {
  inicialiceServicesTots();
  runApp(const MyApp());
}

void inicialiceServicesTots() {
  API.getInstance('https://myback-execute-dot-my-back-401316.uc.r.appspot.com/6-tots-test');
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Tots Test',
      debugShowCheckedModeBanner: false,
      initialRoute: TotsRoutes.LOGIN,
      getPages: TOTsPage.listPages,
    );
  }
}
