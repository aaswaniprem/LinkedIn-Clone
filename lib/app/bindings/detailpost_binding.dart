
import 'package:get/get.dart';
import '../controllers/detailpost_controller.dart';


class DetailPostBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailPostController>(() => DetailPostController());
  }
}