import 'package:firebase_login/screen/HomePage.dart';
import 'package:flutter/material.dart';
import 'Signin.dart';
import 'Signup.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Firebase login',
      theme: ThemeData(
        primaryColor: new Color(0xff075E54),
        accentColor: new Color(0xff25D366),
        cursorColor: new Color(0xff075E54),
        tabBarTheme: TabBarTheme(
          labelColor: Colors.white,
        ),
        bottomAppBarColor: Colors.white 
      ),
      home: HomePage(),
      routes: <String, WidgetBuilder>{
        "/SigninPage": (BuildContext context) => SigninPage(),
        "/SignupPage": (BuildContext context) => SignupPage(),

      },
    );
  }
}