import 'package:chicken/app/modules/mainpage/bindings/mainpage_binding.dart';
import 'package:chicken/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: MainpageBinding(),
      debugShowCheckedModeBanner: false,
      title: 'Chicknes',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xff1C9876)),
        useMaterial3: true,
      ),
      initialRoute: Routes.LOGIN,
      getPages: AppPages.routes,
    );
  }
}
