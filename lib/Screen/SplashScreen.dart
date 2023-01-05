import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_manezer_app/Screen/LoginScreen.dart';
import 'package:task_manezer_app/Widget/Backgroundimages.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool isLoading = true;
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      gotoLoginScreen();
    });
    super.initState();
  }

  void gotoLoginScreen() {
    setState(() {
      isLoading = true;
    });
    Future.delayed(const Duration(seconds: 2)).then((value) {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => LoginScreen(),
          ),
          (route) => false).then((value) {
        setState(() {
          isLoading = false;
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          backgrountImage(context),
          Center(
            child: SvgPicture.asset(
              "assets/images/logo.svg",
              fit: BoxFit.scaleDown,
              width: 150,
            ),
          ),
          const Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            top: 100,
            child: Center(
              child: CircularProgressIndicator(),
            ),
          )
        ],
      ),
    );
  }
}
