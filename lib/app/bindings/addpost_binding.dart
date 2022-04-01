
import 'package:get/get.dart';
import '../controllers/addpost_controller.dart';


class AddPostBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddPostController>(() => AddPostController());
  }
}