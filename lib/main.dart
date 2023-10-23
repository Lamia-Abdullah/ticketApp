import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tickets_app/config/translations/localization_service.dart';
import 'features/home/screens/home_view.dart';
import 'features/signin/screens /signin_screen.dart';
import 'features/signin/screens /signup_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SignInScreen(),
      locale: Get.deviceLocale,
      translations: LocalizationService.getInstance(),
      getPages: [
        GetPage(name: "/Home", page: () => const Home()),
        GetPage(name: "/SignUpScreen", page: () => const SignUpScreen()),
      ],
    );
  }
}
