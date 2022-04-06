
import 'package:get/get.dart';
import '../controllers/maindrawer_controller.dart';


class MaindrawerBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MaindrawerController>(() => MaindrawerController());
  }
}