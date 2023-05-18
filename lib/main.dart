import 'package:flutter/material.dart';
import 'package:my_yoga/My_yoga_app/One_time_intro_screen/Intro_screen.dart';
import 'package:my_yoga/My_yoga_app/Provider_screen/my_yoga_provider.dart';
import 'package:my_yoga/My_yoga_app/Splash_screen/Splash_screen.dart';
import 'package:my_yoga/My_yoga_app/Viwe_screen/Home_screen.dart';
import 'package:my_yoga/My_yoga_app/Viwe_screen/Login_screen.dart';
import 'package:my_yoga/My_yoga_app/Viwe_screen/SignUp_screen.dart';
import 'package:my_yoga/My_yoga_app/Viwe_screen/Sign_up_or_log_in.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(
    Sizer(
      builder: (context, orientation, deviceType) => MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => youga_Provider(),)
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: "splash",
          routes: {
            "/": (context) => Sign_up_or_log_in(),
            "login":(context) => Login_screen(),
            "signup":(context) => SignUp_screen(),
            "home":(context) => Home_screen(),
            "splash":(context) => Splash_screen(),
            "intro":(context) => Intro_screen(),
          },
        ),
      ),
    ),
  );
}
