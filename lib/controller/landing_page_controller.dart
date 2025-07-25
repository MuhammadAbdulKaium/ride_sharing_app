import 'package:get/get.dart';

class LandingPageController extends GetxController {
  final RxInt selectedPageIndex = 0.obs;

  void changePage(int index) {
    if(selectedPageIndex.value != index) {
      selectedPageIndex.value = index;

      // if(index <= 4) {
      //   bottomNavigationPageIndex.value = index;
      // }
    }

    // if(selectedPageIndex.value < 5) {
    //   canGoBack.value = true;
    // }
    // else if(selectedPageIndex.value >= 5) {
    //   canGoBack.value = false;
    // }
  }
}