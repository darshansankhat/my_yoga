import 'package:flutter/material.dart';
import 'package:my_yoga/My_yoga_app/Provider_screen/my_yoga_provider.dart';
import 'package:my_yoga/My_yoga_app/utils/Sign_up_or_login_data/Sign_up_or_login.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class Login_screen extends StatefulWidget {
  const Login_screen({Key? key}) : super(key: key);

  @override
  State<Login_screen> createState() => _Login_screenState();
}

class _Login_screenState extends State<Login_screen> {
  youga_Provider? providerF;
  youga_Provider? providerT;

  TextEditingController txtmobil = TextEditingController();
  TextEditingController txtemail = TextEditingController();
  TextEditingController txtpass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    providerF = Provider.of<youga_Provider>(context, listen: false);
    providerT = Provider.of<youga_Provider>(context, listen: true);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //img
                Image.asset("assets/image/img_1.png",
                    height: 35.h,
                    width: 70.w,
                    filterQuality: FilterQuality.high),
                //login
                Container(
                  height: 60.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                    ),
                    color: Colors.white,
                  ),
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //name
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            "Login",
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        //mobil/email
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
                                "Email/Mobile",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black),
                              )),
                        ),
                        //password
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
                        //remember
                        Row(
                          children: [
                            Checkbox(
                              value: providerT!.d,
                              activeColor: Colors.black,
                              onChanged: (value) {
                                providerT!.select(value!);
                              },
                            ),
                            Text(
                              "Remember me",
                              style: TextStyle(color: Colors.black),
                            ),
                            Spacer(),
                            Text(
                              "Forgot password?",
                              style: TextStyle(color: Colors.blue),
                            ),
                          ],
                        ),
                        //button
                        InkWell(
                          onTap: () async {
                            var email = txtemail.text;
                            var pass = txtpass.text;

                            SharedPref shr = SharedPref();


                            Map m1 = await shr.userLogin();
                            print("${m1}");

                            if (email == m1["email"] && pass == m1["pass"]) {
                              Navigator.pushNamed(context, "home");
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text("Wrong"),
                                  behavior: SnackBarBehavior.floating,
                                  backgroundColor: Colors.black12,
                                ),
                              );
                            }
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
                              "Login",
                              style:
                                  TextStyle(fontSize: 25, color: Colors.white),
                            ),
                          ),
                        ),
                        //otp
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Login via OTP",
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        ),
                        //sign up
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Don't have an account?",
                              style: TextStyle(fontSize: 18),
                            ),
                            TextButton(
                                onPressed: () {
                                  Navigator.pushReplacementNamed(
                                      context, "signup");
                                },
                                child: Text(
                                  "Sign Up",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ))
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
