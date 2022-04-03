
import 'package:get/get.dart';
import '../controllers/invitation_controller.dart';


class InvitationBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<InvitationController>(() => InvitationController());
  }
}