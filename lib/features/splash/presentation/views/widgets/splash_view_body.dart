import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/assets_data.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    NavigateToHome();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [Image.asset(AssetsData.Logo)],
    );
  }

  void NavigateToHome() {
    Future.delayed(Duration(seconds: 2), () {
      Get.to(() => const HomeView(),
          transition: Transition.fade, duration: KTrantationDuration);
    });
  }
}
