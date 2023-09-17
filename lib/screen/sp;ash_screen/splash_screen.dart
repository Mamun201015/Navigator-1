// ignore_for_file: file_names

import 'dart:async';

import 'package:class_12/auth/signin.dart';
import 'package:class_12/const/image_part.dart';
import 'package:class_12/utils/height.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    wenttopage();
  }

  wenttopage() {
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => SignIn(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              kImagePath.main,
              width: KAppSize.getwidth(context: context, size: 30),
              height: KAppSize.getheight(context: context, size: 20),
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: (width / 10) * 0.5,
            ),
            SizedBox(
              height: (width / 10) * 0.5,
              width: (width / 10) * 0.5,
              // ignore: prefer_const_constructors
              child: CircularProgressIndicator(
                color: Colors.blue,
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  (context);
                },
                child: Text("Show DateTime")),
          ],
        ),
      ),
    );
  }

  signin() {}
}
