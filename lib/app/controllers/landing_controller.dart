import 'package:get/get.dart';
import 'package:linkedin_clone/app/ui/pages/addpost_page/addpost_page.dart';
import 'package:linkedin_clone/app/ui/pages/recommendation_page/recommendation_page.dart';
import 'package:linkedin_clone/app/ui/pages/viewprofile_page/viewprofile_page.dart';

class LandingController extends GetxController {
  var tabIndex = 0.obs;

  void changeTabIndex(int index) {
    // tabIndex.value = index;

    if (index != 2) {
      tabIndex.value = index;

      print(tabIndex.value);
    } else {
      Get.to(() => (AddPostPage()));
    }
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void dispose() {
    super.dispose();
  }
}
