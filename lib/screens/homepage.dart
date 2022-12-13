import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:smartshowerapp/screens/connectPage.dart';
import 'package:smartshowerapp/screens/onboardingPage.dart';
import 'package:smartshowerapp/screens/pointsPage.dart';
import 'package:smartshowerapp/screens/settingsPage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: const Color.fromARGB(137, 34, 34, 34),
        appBar: AppBar(
            flexibleSpace: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/gradient.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            backgroundColor: Colors.transparent,
            title: Text(
              "Welcome to your Smart Shower!",
            )),
        body: SafeArea(
          child: ListView(
            children: [
              Container(
                margin: EdgeInsets.all(15),
                width: 200,
                height: 160,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.black12,
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://images.unsplash.com/photo-1607355739828-0bf365440db5?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1444&q=80",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                height: 50,
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        left: 15,
                      ),
                      width: 60,
                      height: 10,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white30,
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/musica.png",
                          ),
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 20,
                      ),
                      width: 60,
                      height: 10,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white30,
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/corazon.png",
                          ),
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 20,
                      ),
                      width: 60,
                      height: 10,
                      decoration: BoxDecoration(
                        color: Colors.white30,
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/agua.png",
                          ),
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 20,
                      ),
                      width: 60,
                      height: 10,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white30,
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/cuota.png",
                          ),
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 20,
                      ),
                      width: 60,
                      height: 10,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white30,
                        image: DecorationImage(
                          image: AssetImage("assets/calendario.png"),
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: GNav(
          backgroundColor: const Color.fromARGB(137, 34, 34, 34),
          color: Colors.white,
          activeColor: const Color(0xFFB74093),
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
