
import 'package:get/get.dart';
import '../controllers/messages_controller.dart';


class MessagesBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MessagesController>(() => MessagesController());
  }
}