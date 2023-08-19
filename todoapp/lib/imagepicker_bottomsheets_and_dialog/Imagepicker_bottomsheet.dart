
import 'package:get/get.dart';




class SingUpController extends GetxController {
  var checkMark = false.obs;
  var val = true.obs;
  var isProfilePicPathSet = false.obs;
  var profilePicPath = ''.obs;

  void setProfileImagePath(String path) {
    profilePicPath.value = path;
    isProfilePicPathSet.value = true;
  }

  var themeval = true.obs;
  RxDouble teststyle = 20.0.obs;
  var confirmUpdatingTask = false.obs;
  var printreverselist = true.obs;
  var quick = false.obs;
}

SingUpController singUpController = Get.put(SingUpController());
