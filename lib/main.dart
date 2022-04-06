import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'app/routes/my_pages.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.white));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.splash,
      theme: ThemeData(
          brightness: Brightness.light,
          primaryTextTheme:
              Theme.of(context).textTheme.apply(bodyColor: Colors.black),
          // textTheme: TextTheme(),
          primaryColor: Colors.black,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      // defaultTransition: Transition.fade,
      // initialBinding: HomeBinding(),
      getPages: AppPages.pages,
      // home: HomePage()
    );
  }
}
