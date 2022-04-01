
import 'package:get/get.dart';
import '../controllers/viewprofile_controller.dart';


class ViewProfileBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ViewProfileController>(() => ViewProfileController());
  }
}