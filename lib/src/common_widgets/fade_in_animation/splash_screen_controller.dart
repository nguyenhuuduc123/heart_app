import 'package:get/get.dart';

import '../../features/authentication/screens/welcome_screen/welcome_screen.dart';

class FadeInAnimationController extends GetxController {
  static FadeInAnimationController get find => Get.find();

  RxBool animate = false.obs;
  //To be used in Splash Screen due to auto calling of next activity.
  Future startSplashAnimation() async {
    await Future.delayed(const Duration(milliseconds: 500));
    animate.value = true;
    await Future.delayed(const Duration(milliseconds: 3000));
    animate.value = false;
    await Future.delayed(const Duration(milliseconds: 2000));
    Get.off(
      // Get.off Instead of Get.offAll()
      () => const WelcomeScreen(),
      duration: const Duration(milliseconds: 1000), //Transition Time
      transition: Transition.fadeIn, //Screen Switch Transition
    );
  }

  //Call where you need to animate In any widget.
  Future animationIn() async {
    await Future.delayed(const Duration(milliseconds: 500));
    animate.value = true;
  }

  //Call where you need to animate Out any widget.
  Future animationOut() async {
    animate.value = false;
    await Future.delayed(const Duration(milliseconds: 100));
  }
}
