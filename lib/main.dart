import 'package:dating_app/AddProfileDetails/views/add_profile_Details.dart';
import 'package:dating_app/Gender/views/Gender.dart';
import 'package:dating_app/PhoneNumber/views/phoneNumPage.dart';
import 'package:dating_app/VerificationCode/views/VarificationCode.dart';
import 'package:dating_app/loginpage/views/Login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Gender_page(),
    );
  }
}
