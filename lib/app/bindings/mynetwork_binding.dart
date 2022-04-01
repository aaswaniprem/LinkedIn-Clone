
import 'package:get/get.dart';
import '../controllers/mynetwork_controller.dart';


class MyNetworkBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyNetworkController>(() => MyNetworkController());
  }
}