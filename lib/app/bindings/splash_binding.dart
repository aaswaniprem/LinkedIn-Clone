
import 'package:get/get.dart';
import '../controllers/splash_controller.dart';


class SplashBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashController>(() => SplashController());
  }
}