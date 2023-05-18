import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Sign_up_or_log_in extends StatefulWidget {
  const Sign_up_or_log_in({Key? key}) : super(key: key);

  @override
  State<Sign_up_or_log_in> createState() => _Sign_up_or_log_inState();
}

class _Sign_up_or_log_inState extends State<Sign_up_or_log_in> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //img
              Image.asset("assets/image/img_1.png",
                  height: 45.h, width: 90.w, filterQuality: FilterQuality.high),
              //welcome
              Text(
                "Welcome",
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.pink.shade400,
                    fontWeight: FontWeight.bold),
              ),
              //text
              SizedBox(height: 10),
              Text(
                "Please login or signup to continue using this app",
                style: TextStyle(
                  fontSize: 13.sp,
                  color: Colors.white,
                ),
              ),
              //button
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "signup");
                    },
                    child: Container(
                      height: 7.h,
                      width: 40.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.white),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  InkWell(onTap: () {
                    Navigator.pushNamed(context, "login");
                  },
                    child: Container(
                      height: 7.h,
                      width: 40.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.white),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "Login",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
              //other
              SizedBox(height: 20),
              Text(
                "Or via social media",
                style: TextStyle(fontSize: 14.sp, color: Colors.white),
              ),
              //button
              Container(
                height: 10.h,
                width: 35.w,
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          "assets/image/logo/l1.png",
                          height: 100,
                          width: 100,
                          fit: BoxFit.cover,
                        )),
                    Text("OR",style: TextStyle(fontSize: 20,color: Colors.white),),
                    IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          "assets/image/logo/l2.png",
                          height: 100,
                          width: 100,
                          fit: BoxFit.cover,
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
