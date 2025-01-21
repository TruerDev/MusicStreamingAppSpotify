import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';
import 'package:spotify_clone_app/core/configs/assets/app_animations.dart';
import 'package:spotify_clone_app/core/configs/assets/app_vectors.dart';
import 'package:spotify_clone_app/presentation/intro/pages/get_started.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    super.initState();
    redirect();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset(
          AppAnimations.welcome,
          ),
        ),
      );
  }

  Future<void> redirect() async {
    await Future.delayed(const Duration(seconds: 2));
    Navigator.pushReplacement(
      context, 
      MaterialPageRoute(
        builder: (BuildContext context) => const GetStartedPage()
      )
    );
  }
}