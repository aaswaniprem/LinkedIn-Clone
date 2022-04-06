
import 'package:get/get.dart';
import '../controllers/seemorepages_controller.dart';


class SeemorepagesBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SeemorepagesController>(() => SeemorepagesController());
  }
}