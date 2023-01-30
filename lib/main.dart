import 'package:flutter/material.dart';
import 'package:jewellery_app/cart.dart';
import 'package:jewellery_app/fav.dart';
import 'package:jewellery_app/home.dart';
import 'package:jewellery_app/profile.dart';
import 'package:jewellery_app/signin.dart';
import 'package:jewellery_app/signup.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignIn(),
      theme: ThemeData(
        primaryColor: Colors.pink[200]
      ),
      routes: {
        "signup": (context) => SignUp(),
        "signin": (context) => SignIn(),
        "home": (context) => Home(),
        "fav": (context) => Fav(),
        "cart": (context) => Cart(),
        "prof": (context) => Profile(),
       

      },
    );
  }
}
