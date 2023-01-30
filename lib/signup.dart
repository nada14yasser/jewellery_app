import 'dart:ui';

import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _isHidden = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        child: Container(
            height: double.infinity,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Sign Up",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFF48FB1)),
                ),
                const SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      TextField(
                        decoration: InputDecoration(
                            hintText: "Username",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(18),
                                borderSide: BorderSide.none),
                            fillColor: Color(0xFFFCE4EC),
                            filled: true,
                            prefixIcon: Icon(
                              Icons.person,
                              color: Color(0xFFF48FB1),
                            )),
                      ),
                      SizedBox(height: 10),
                      TextField(
                        decoration: InputDecoration(
                            hintText: "Email",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(18),
                                borderSide: BorderSide.none),
                            fillColor: Color(0xFFFCE4EC),
                            filled: true,
                            prefixIcon: Icon(
                              Icons.email,
                              color: Color(0xFFF48FB1),
                            )),
                      ),
                      SizedBox(height: 10),
                      TextField(
                        decoration: InputDecoration(
                          hintText: "Password",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide: BorderSide.none),
                          fillColor: Color(0xFFFCE4EC),
                          filled: true,
                          contentPadding: EdgeInsets.all(20),
                          prefixIcon: Icon(
                            Icons.lock,
                            color: Color(0xFFF48FB1),
                          ),
                          suffixIcon: InkWell(
                            child: Icon(
                              _isHidden ? Icons.visibility : Icons.visibility_off,
                              color: Color(0xFFF48FB1),
                            ),
                            onTap: _togglePasswordView,
                          ),
                        ),
                        obscureText: true,
                      ),
                      SizedBox(height: 10),
                      TextField(
                        decoration: InputDecoration(
                          hintText: "Confirm Password",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide: BorderSide.none),
                          fillColor: Color(0xFFFCE4EC),
                          filled: true,
                          contentPadding: EdgeInsets.all(20),
                          prefixIcon: Icon(
                            Icons.lock,
                            color: Color(0xFFF48FB1),
                          ),
                          suffixIcon: InkWell(
                            child: Icon(
                              _isHidden ? Icons.visibility : Icons.visibility_off,
                              color: Color(0xFFF48FB1),
                            ),
                            onTap: _togglePasswordView,
                          ),
                        ),
                        obscureText: true,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  child: MaterialButton(
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(fontSize: 20),
                    ),
                    onPressed: () {},
                    color: Color(0xFFF48FB1),
                    textColor: Colors.white,
                    minWidth: 300,
                    height: 50,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("signin");
                  },
                  child: const Text("already have account? Sign In--->",
                      style: TextStyle(color: Color(0xFFF48FB1))),
                ),
                const Divider(
                indent: 50,endIndent: 50,
                  color: Color(0xFFF48FB1),
                ),
                Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20,top:20,bottom: 10),
                    child: OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                            side:
                                BorderSide(width: 1, color: Color(0xFFF48FB1)),
                            minimumSize: Size(60, 45)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'images/google icon.png',
                              width: 30,
                              height: 30,
                              fit: BoxFit.fill,
                            ),
                            SizedBox(width: 20),
                            Text(
                              "Sign Up with Google",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 17),
                            )
                          ],
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20,bottom: 10),
                    child: OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                            side:
                                BorderSide(width: 1, color: Color(0xFFF48FB1)),
                            minimumSize: Size(60, 45)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'images/facebookcircle.png',
                              width: 35,
                              height: 35,
                              fit: BoxFit.fill,
                            ),
                            SizedBox(width: 20),
                            Text(
                              "Sign Up with FaceBook",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 17),
                            )
                          ],
                        )),
                  )
              ],
            )),
      ),
    );
  }

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }
}
