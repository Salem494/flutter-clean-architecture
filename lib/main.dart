import 'package:flutter/material.dart';
import 'package:flutter_clean_architucture/const.dart';
import 'package:flutter_clean_architucture/core/utils/app_route.dart';
import 'package:flutter_clean_architucture/feature/splash/presentation/views/splash_view.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData.dark().copyWith( scaffoldBackgroundColor: kPrimaryColor),
      debugShowCheckedModeBanner: false,
       routerConfig: AppRoute.router,
          );
  }
}


