import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt count = 0.obs;

  incrementCount(){
    count.value++;
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    count.value = 34;
  }
}
