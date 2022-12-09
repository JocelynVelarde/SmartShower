import 'package:flutter/material.dart';
import 'package:smartshowerapp/screens/onboardingPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static final String title = 'Onboarding Example';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(
            backgroundColor: const Color(0x0021262d),
            appBarTheme: const AppBarTheme(backgroundColor: Color(0x0021262d))),
        home: OnBoardingPage(),
      );
}
