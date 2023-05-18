import 'package:flutter/material.dart';
import 'package:my_yoga/My_yoga_app/utils/Sign_up_or_login_data/Sign_up_or_login.dart';

class Splash_screen extends StatefulWidget {
  const Splash_screen({Key? key}) : super(key: key);

  @override
  State<Splash_screen> createState() => _Splash_screenState();
}

class _Splash_screenState extends State<Splash_screen> {

  bool? status;
  @override
  void initState() {
    super.initState();
    Getdata();
  }

  Future<void> Getdata() async {
    SharedPref shr =SharedPref();
    Map m1 = await shr.userLogin();
    status = await shr.introDoneRead();
    // m1["login"]? Navigator.pushReplacementNamed(context, "home"):status!?Navigator.pushReplacementNamed(context, 'home'):Navigator.pushReplacementNamed(context, "/");
    //
    if(status==true)
      {
        if(m1['login']==true)
          {
            Navigator.pushReplacementNamed(context, 'home');

          }
        else
          {
            Navigator.pushReplacementNamed(context, '/');
          }
      }
    else
      {
        Navigator.pushReplacementNamed(context, 'intro');
      }
  }

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      Duration(seconds: 3),
      ()  {
        Getdata();

      },
    );

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
            child: Text(
          "darshan",
          style: TextStyle(fontSize: 30, color: Colors.amber),
        )),
      ),
    );
  }
}
