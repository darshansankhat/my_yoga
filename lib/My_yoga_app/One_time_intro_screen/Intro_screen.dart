import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:my_yoga/My_yoga_app/utils/Sign_up_or_login_data/Sign_up_or_login.dart';

class Intro_screen extends StatefulWidget {
  const Intro_screen({Key? key}) : super(key: key);

  @override
  State<Intro_screen> createState() => _Intro_screenState();
}

class _Intro_screenState extends State<Intro_screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: IntroductionScreen(
          pages: [
            PageViewModel(
              title: "Halthe is Welth",
              body: "I have been to yoga classes twice and thought it was hard",
              image: Image.asset("assets/image/ii1.jpg"),

            ),
            PageViewModel(
              title: "Halthe is Welth",
              body: "I have been to yoga classes twice and thought it was hard",
              image: Image.asset("assets/image/ii2.jpg"),

            ),
            PageViewModel(
              title: "Halthe is Welth",
              body: "I have been to yoga classes twice and thought it was hard",
              image: Image.asset("assets/image/ii3.jpg"),

            ),
          ],
          showNextButton: true,
          showDoneButton: true,
          done: Text("Done"),
          onDone: () {
            SharedPref shr = SharedPref();
            shr.introDone();
            Navigator.pushReplacementNamed(context, "/");
          },
          next: Text("Next"),
        ),
      ),
    );
  }
}
