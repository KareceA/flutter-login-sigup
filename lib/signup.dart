import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class MySignUp extends StatefulWidget {
  const MySignUp({Key? key}) : super(key: key);

  @override
  State<MySignUp> createState() => _MySignUpState();
}

class _MySignUpState extends State<MySignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SizedBox(
          child: Stack(children: [
            Positioned(
              top: 200,
              left: -100,
              child: Container(
                width: 300,
                height: 300,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(46, 39, 129, 239),
                  borderRadius: BorderRadius.all(
                    Radius.circular(150),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              right: -10,
              child: Container(
                width: 200,
                height: 200,
                decoration: const BoxDecoration(
                  color: Color(0x30cc33ff),
                  borderRadius: BorderRadius.all(
                    Radius.circular(100),
                  ),
                ),
              ),
            ),
            Positioned(
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 80,
                  sigmaY: 80,
                ),
                child: Container(),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  children: [
                    _logo(),
                    // const SizedBox(
                    //   height: 10,
                    // ),
                    _SignUpLabel(),
                    const SizedBox(
                      height: 20,
                    ),
                    _labelTextInput(
                        "First Name", "Enter your first name", false),
                    const SizedBox(
                      height: 20,
                    ),
                    _labelTextInput("Last Name", "Enter your last name", false),
                    const SizedBox(
                      height: 20,
                    ),
                    _labelTextInput("Email", "yourname@example.com", false),
                    const SizedBox(
                      height: 20,
                    ),
                    _labelTextInput("Password", "yourpassword", true),
                    const SizedBox(
                      height: 20,
                    ),
                    _labelTextInput(
                        "Confirm Password", "confirm yourpassword", true),
                    const SizedBox(
                      height: 20,
                    ),
                    _SignUpBtn(),
                    const SizedBox(
                      height: 90,
                    ),
                    _signUpLabel("Already have an account?", Color(0xff909090)),
                    const SizedBox(
                      height: 10,
                    ),
                    _signUpLabel("Login", Color(0xff164276)),
                    const SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}

Widget _signUpLabel(String label, Color textColor) {
  return Text(
    label,
    style: GoogleFonts.josefinSans(
      textStyle: TextStyle(
        color: textColor,
        fontWeight: FontWeight.w800,
        fontSize: 18,
      ),
    ),
  );
}

Widget _SignUpBtn() {
  return Container(
    width: double.infinity,
    height: 60,
    decoration: const BoxDecoration(
      color: Color(0xFF7C4DFF),
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
    child: TextButton(
      onPressed: () => {},
      child: Text(
        "Sign Up",
        style: GoogleFonts.josefinSans(
          textStyle: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w800,
            fontSize: 24,
          ),
        ),
      ),
    ),
  );
}

Widget _labelTextInput(String label, String hintText, bool isPassword) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        label,
        style: GoogleFonts.josefinSans(
            textStyle: const TextStyle(
                color: Color(0xff8fa1b6),
                fontWeight: FontWeight.w600,
                fontSize: 20)),
      ),
      TextField(
        obscureText: isPassword,
        cursorColor: Colors.red,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: GoogleFonts.josefinSans(
            textStyle: const TextStyle(
                color: Color(0xffc5d2e1),
                fontWeight: FontWeight.w400,
                fontSize: 20),
          ),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xffdfe8f3)),
          ),
        ),
      ),
    ],
  );
}

Widget _SignUpLabel() {
  return Center(
    child: Text(
      "SignUp",
      style: GoogleFonts.josefinSans(
        textStyle: const TextStyle(
          color: Color(0xff164276),
          fontWeight: FontWeight.w900,
          fontSize: 34,
        ),
      ),
    ),
  );
}

Widget _logo() {
  return Center(
    child: SizedBox(
      height: 200,
      width: 200,
      child: SvgPicture.asset('images/signup.svg'),
    ),
  );
}
