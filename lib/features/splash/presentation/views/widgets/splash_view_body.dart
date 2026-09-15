import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:bookly_app/features/splash/presentation/views/widgets/slide_transition_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidinganimation;
  @override
  void initState() {
    super.initState();
    slidingAnimation();
    navigationToHome();
  }

 

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssitsImage.logo),
        Center(child: slideTransitionText(slidinganimation: slidinganimation)),
      ],
    );
  }

  void slidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    slidinganimation = Tween<Offset>(
      begin: Offset(0, 7),
      end: Offset.zero,
    ).animate(animationController);
    animationController.forward();
  }
   void navigationToHome() {
    Future.delayed(const Duration(seconds: 2), () {
      Get.to(() => const HomeView(), transition: Transition.fadeIn);
    });
  }
}
