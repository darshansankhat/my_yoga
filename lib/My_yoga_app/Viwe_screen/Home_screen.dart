import 'dart:io';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:my_yoga/My_yoga_app/Provider_screen/my_yoga_provider.dart';
import 'package:my_yoga/My_yoga_app/utils/Sign_up_or_login_data/Sign_up_or_login.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class Home_screen extends StatefulWidget {
  const Home_screen({Key? key}) : super(key: key);

  @override
  State<Home_screen> createState() => _Home_screenState();
}

class _Home_screenState extends State<Home_screen> {
  youga_Provider? providerF;
  youga_Provider? providerT;

  @override
  Widget build(BuildContext context) {
    providerF = Provider.of<youga_Provider>(context, listen: false);
    providerT = Provider.of<youga_Provider>(context, listen: true);

    return SafeArea(
      child: Scaffold(
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CarouselSlider.builder(
              itemCount: 5,
              itemBuilder: (context, index, realIndex) {
                return Container(
                  height: 20.h,
                  width: 80.w,
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.pink,
                    border: Border.all(width: 2, color: Colors.amber),
                    image: DecorationImage(
                        image: AssetImage("${providerT!.imgList[index]}"),
                        fit: BoxFit.cover),
                  ),
                );
              },
              options: CarouselOptions(
                initialPage: 0,
                autoPlay: true,
                enlargeCenterPage: true,
                onPageChanged: (index, reason) {
                  providerF!.indicatorChange(index);
                },
              ),
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: providerF!.imgList
                    .asMap()
                    .entries
                    .map((e) => Container(
                          height: 10,
                          width: 10,
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: providerT!.dd == e.key
                                  ? Colors.amber
                                  : Colors.grey),
                        ))
                    .toList()),
            FlutterLogo(
              size: 150,
            ),
            SizedBox(height: 20),
            Text(
              "Welcome to home",
              style: TextStyle(fontSize: 30, color: Colors.amber),
            ),
            SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                SharedPref shr = SharedPref();

                shr.userLogout();

                Navigator.pushReplacementNamed(context, "/");


              },
              child: Text("Logout"),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
            )
          ],
        )),
      ),
    );
  }
}
