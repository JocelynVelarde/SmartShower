import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:smartshowerapp/screens/connectPage.dart';
import 'package:smartshowerapp/screens/onboardingPage.dart';
import 'package:smartshowerapp/screens/pointsPage.dart';
import 'package:smartshowerapp/screens/settingsPage.dart';
import 'package:smartshowerapp/widgets/button.dart';

import '../main.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Color.fromARGB(137, 34, 34, 34),
        appBar: AppBar(
          title: Text(MyApp.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 24),
              ButtonWidget(
                text: 'Go Back',
                onClicked: () => goToOnBoarding(context),
                key: Key('goBack'),
              ),
            ],
          ),
        ),
        bottomNavigationBar: GNav(
          backgroundColor: Color.fromARGB(137, 34, 34, 34),
          color: Colors.white,
          activeColor: Colors.blue.shade500,
          tabs: [
            GButton(
                icon: Icons.newspaper,
                text: "Connect",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ConnectPage()),
                  );
                }),
            GButton(
                icon: Icons.home,
                text: "Home",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  );
                }),
            GButton(
                icon: Icons.emoji_events,
                text: "Points",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const PointsPage()),
                  );
                }),
            GButton(
                icon: Icons.settings,
                text: "Settings",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SettingsPage()),
                  );
                }),
          ],
        ),
      );

  void goToOnBoarding(context) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => OnBoardingPage()),
      );
}
