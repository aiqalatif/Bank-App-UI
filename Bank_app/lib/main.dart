import 'package:bankapppp/res/routes/routes.dart';
import 'package:bankapppp/res/routes/routesname.dart';
import 'package:bankapppp/view/Banktobank.dart';
import 'package:bankapppp/view/Contact.dart';
import 'package:bankapppp/view/Contatc2.dart';
import 'package:bankapppp/view/Transactionhistory.dart';
import 'package:bankapppp/view/home.dart';
import 'package:bankapppp/view/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'view/AddtoWallet.dart';
import 'view/RequestMoney.dart';
import 'view/ToBank.dart';
import 'view/ToBank2.dart';
import 'view/ToMarchant.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (BuildContext context, child) => GetMaterialApp(
     home: Splash(),

        getPages: approutes.appRoutes(),

        debugShowCheckedModeBanner: false,
      ), designSize: Size(375,812),
    );
  }
}

