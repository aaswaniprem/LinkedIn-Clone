
import 'package:get/get.dart';
import '../controllers/setting_controller.dart';


class SettingBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SettingController>(() => SettingController());
  }
}