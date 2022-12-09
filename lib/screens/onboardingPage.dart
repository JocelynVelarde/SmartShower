import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:smartshowerapp/screens/homepage.dart';

class OnBoardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SafeArea(
        child: IntroductionScreen(
          pages: [
            PageViewModel(
              title: 'Welcome to your Smart Shower',
              body:
                  'We will walk you into a few steps for setting up your Smart Shower application',
              image: buildImage('assets/ducha.png'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'Configure your shower',
              body:
                  'You will be able to set time, date and temperature for every shower.',
              image: buildImage('assets/temperatura.png'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'Personalized stadistics for every shower',
              body:
                  'A weekly report will be available for you to check: expenses, time and water consumption.',
              image: buildImage('assets/estadisticas.png'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'Have fun while saving water!',
              body:
                  'You can connect with the community and friends to share your achievements towards saving water.',
              image: buildImage('assets/logro.png'),
              decoration: getPageDecoration(),
            ),
          ],
          done:
              Text('Save Water', style: TextStyle(fontWeight: FontWeight.w600)),
          onDone: () => goToHome(context),
          showSkipButton: true,
          skip: Text('Skip'),
          onSkip: () => goToHome(context),
          next: Icon(Icons.arrow_forward),
          dotsDecorator: getDotDecoration(),
          onChange: (index) => print('Page $index selected'),
          globalBackgroundColor: Color.fromARGB(137, 34, 34, 34),
          dotsFlex: 0,
          nextFlex: 0,
          // isProgressTap: false,
          // isProgress: false,
          // showNextButton: false,
          // freeze: true,
          // animationDuration: 1000,
        ),
      );

  void goToHome(context) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => HomePage()),
      );

  Widget buildImage(String path) =>
      Center(child: Image.asset(path, width: 350));

  DotsDecorator getDotDecoration() => DotsDecorator(
        color: Color.fromARGB(255, 255, 255, 255),
        activeColor: Colors.blue.shade500,
        size: Size(10, 10),
        activeSize: Size(22, 10),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      );

  PageDecoration getPageDecoration() => PageDecoration(
        titleTextStyle: TextStyle(
            fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),
        bodyTextStyle: TextStyle(fontSize: 20, color: Colors.white),
        //descriptionPadding: EdgeInsets.all(16).copyWith(bottom: 0),
        imagePadding: EdgeInsets.all(24),
        pageColor: Color(0x21262d),
      );
}
