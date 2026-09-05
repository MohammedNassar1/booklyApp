import 'package:bookly_app/features/splash/presentation/views/splash-view.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

void main() {
  runApp(booklyApp());
}

class booklyApp extends StatelessWidget {
  const booklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(home: SplashView());
  }
}
