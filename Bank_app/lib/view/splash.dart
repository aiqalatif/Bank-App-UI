import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:bankapppp/assest/assests-folder.dart';
import 'package:bankapppp/view/SignIn.dart';
import 'package:bankapppp/view/splash.dart';
import 'package:flutter/material.dart';
class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _nevigatehome();
  }

  _nevigatehome() async {
    await Future.delayed(const Duration(milliseconds: 3000), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const signIn()));
  }

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
    child: Container(
        height: 242,
        width: 341,
        decoration: BoxDecoration(
          image:  DecorationImage(
            image:AssetImage(ImageAssests.splash
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
      )
    );
  }
}
