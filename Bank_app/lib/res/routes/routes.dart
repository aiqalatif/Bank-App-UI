import 'package:bankapppp/res/routes/routesname.dart';
import 'package:bankapppp/view/SignIn.dart';
import 'package:bankapppp/view/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../../view/splash.dart';
class approutes{
  static appRoutes()=>[
    GetPage(name:RoutesName.splashScreen,page:()=>Splash(),),
    GetPage(name:RoutesName.signInScreen,page:()=>signIn(),),
    GetPage(name:RoutesName.Home,page:()=>Home(),),

  ];
  static getsplashScreen()=>getsplashScreen();
  static getsignInScreen()=>getsignInScreen();
  static HomeScreen()=>HomeScreen();



}
