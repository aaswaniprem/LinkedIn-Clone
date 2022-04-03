
import 'package:get/get.dart';
import '../controllers/recommendation_controller.dart';


class RecommendationBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RecommendationController>(() => RecommendationController());
  }
}