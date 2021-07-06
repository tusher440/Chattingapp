import 'package:flutter/material.dart';
import 'package:flutter_chattingapp/login.dart';
import 'package:splashscreen/splashscreen.dart';


class splash extends StatefulWidget {
  @override
  _splashState createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      image: Image.asset("images/appstore.png"),
      seconds: 5,
      backgroundColor: Colors.lightBlue,
      title: Text("Wellcome to Excel IT AI"),
      loadingText: Text("loading"),
      photoSize: 100,
    );
  }
}
