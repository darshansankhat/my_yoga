import 'package:flutter/material.dart';
import 'package:my_yoga/My_yoga_app/utils/Sign_up_or_login_data/Sign_up_or_login.dart';
import 'package:sizer/sizer.dart';

class SignUp_screen extends StatefulWidget {
  const SignUp_screen({Key? key}) : super(key: key);

  @override
  State<SignUp_screen> createState() => _SignUp_screenState();
}

class _SignUp_screenState extends State<SignUp_screen> {
  TextEditingController txtmobil = TextEditingController();
  TextEditingController txtemail = TextEditingController();
  TextEditingController txtpass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //img
                  Align(
                    alignment: Alignment.topCenter,
                    child: Image.asset("assets/image/img_1.png",
                        height: 35.h,
                        width: 70.w,
                        filterQuality: FilterQuality.high),
                  ),
                ],
              ),
              //signUp
              Padding(
                padding: EdgeInsets.only(top: 200),
                child: Container(
                  height: 80.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                    ),
                    color: Colors.white,
                  ),
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          //name
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text(
                              "Sign Up",
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          //mobil
                          SizedBox(height: 4.h),
                          TextFormField(
                            controller: txtmobil,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: Colors.black),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: Colors.black),
                                ),
                                border: InputBorder.none,
                                label: Text(
                                  "Mobile",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.black),
                                )),
                          ),
                          //email
                          SizedBox(height: 3.h),
                          TextFormField(
                            controller: txtemail,
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: Colors.black),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: Colors.black),
                                ),
                                border: InputBorder.none,
                                label: Text(
                                  "Email",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.black),
                                )),
                          ),
                          //password
                          SizedBox(height: 3.h),
                          TextFormField(
                            controller: txtpass,
                            keyboardType: TextInputType.number,
                            obscureText: true,
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: Colors.black),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: Colors.black),
                                ),
                                border: InputBorder.none,
                                label: Text(
                                  "Password",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.black),
                                ),
                                suffixIcon: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.visibility_outlined,
                                    color: Colors.black,
                                    size: 30,
                                  ),
                                )),
                          ),
                          //button
                          SizedBox(height: 3.h),
                          InkWell(
                            onTap: () {
                              var mobil = txtmobil.text;
                              var email = txtemail.text;
                              var pass = txtpass.text;

                              SharedPref shr = SharedPref();

                              shr.appUser(
                                  email: "$email", password: "$pass",mobil: "$mobil",opt: true);

                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(
                                content: Text(
                                  "Sign Up successfully",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                                behavior: SnackBarBehavior.floating,
                              ),);
                              
                              Navigator.pushNamed(context, "login");
                            },
                            child: Container(
                              height: 7.h,
                              width: 100.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.black,
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                "Sign Up",
                                style: TextStyle(
                                    fontSize: 25, color: Colors.white),
                              ),
                            ),
                          ),
                          //other
                          SizedBox(height: 3.h),
                          Text(
                            "Or via social media",
                            style:
                                TextStyle(fontSize: 14.sp, color: Colors.black),
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
                                Text(
                                  "OR",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.black),
                                ),
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
                          //sign up
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Already have an account?",
                                style: TextStyle(fontSize: 18),
                              ),
                              TextButton(
                                  onPressed: () {
                                    Navigator.pushReplacementNamed(context, "login");
                                  },
                                  child: Text(
                                    "Login",
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ))
                            ],
                          ),
                          SizedBox(height: 1.h),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
