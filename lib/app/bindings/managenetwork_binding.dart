
import 'package:get/get.dart';
import '../controllers/managenetwork_controller.dart';


class ManageNetworkBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ManageNetworkController>(() => ManageNetworkController());
  }
}