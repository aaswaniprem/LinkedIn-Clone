import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:linkedin_clone/app/bindings/home_binding.dart';
import 'package:linkedin_clone/app/bindings/landing_binding.dart';
import 'package:linkedin_clone/app/bindings/splash_binding.dart';
import 'package:linkedin_clone/app/ui/pages/home_page/home_page.dart';
import 'package:linkedin_clone/app/ui/pages/landing_page/landing_page.dart';
import 'package:linkedin_clone/app/ui/pages/splash_page/splash_page.dart';

part 'my_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(name: Routes.HOME, page: () => HomePage(), binding: HomeBinding()),
    GetPage(
        name: Routes.landing,
        page: () => LandingPage(),
        binding: LandingBinding()),
    GetPage(
        name: Routes.splash,
        page: () => SplashPage(),
        binding: SplashBinding()),
  ];
}
