import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sdcs/Complaint.dart';
import 'package:sdcs/bottomNavigator/feedback.dart';
import 'package:sdcs/bottomNavigator/home_body.dart';
import 'package:sdcs/Register/otp_page.dart';
import 'package:sdcs/Register/registor-page.dart';
import 'package:sdcs/Utils/routes.dart';
import 'package:sdcs/electrificaition.dart';
import 'package:sdcs/home.dart';
import 'package:sdcs/personal_info.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.teal, textTheme: GoogleFonts.jostTextTheme()),
      routes: {
        "/": (context) => const RegistorPage(),
        Screen.complaintScreen: (context) => const Complaint(),
        Screen.personalScreen: (context) => const PersonalInfo(),
        Screen.registorScreen: (context) => const RegistorPage(),
        Screen.otpPageScreen: (context) => const OtpPage(),
        Screen.homePageScreen: (context) => const HomePage(),
        Screen.homeBodyScreen: (context) => const HomeBody(),
        Screen.feedbackScreen: (context) => const FeedbackPage(),
        Screen.electrificationScreen: (context) => const Electrification(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}