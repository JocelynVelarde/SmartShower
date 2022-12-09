import 'package:flutter/material.dart';
import 'package:smartshowerapp/screens/onboardingPage.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static final String title = 'Onboarding Example';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(
            backgroundColor: Color(0x21262d),
            appBarTheme: AppBarTheme(backgroundColor: Color(0x21262d))),
        home: OnBoardingPage(),
      );
}
