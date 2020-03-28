import 'package:covid19_summary_app/screens/dashbord_screen.dart';
import 'package:fancy_on_boarding/fancy_on_boarding.dart';
import 'package:flutter/material.dart';


class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {

  final pageList = [
    PageModel(
      color: const Color(0xFF678FB4),
      heroAssetPath: 'assets/images/hands.png',
      title: Text('Laver vos mains',
          style: TextStyle(
            fontWeight: FontWeight.w800,
            color: Colors.white,
            fontSize: 30.0,
          )),
      body: Text('loremlorem lorem loremlorem lorem loremlorem lorem lorem',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
          )),
      iconAssetPath: 'assets/images/hands.png'
    ),

    PageModel(
        color: const Color(0xFF65B0B4),
        heroAssetPath: 'assets/images/mask.png',
        title: Text('Portez un masque chirugical',
            style: TextStyle(
              fontWeight: FontWeight.w800,
              color: Colors.white,
              fontSize: 30.0,
            )),
        body: Text(
            'loremlorem lorem loremlorem lorem loremlorem lorem lorem',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
            )),
        iconAssetPath: 'assets/images/mask.png'
    ),

    PageModel(
      color: const Color(0xFF9B90BC),
      heroAssetPath: 'assets/images/hi.png',
      title: Text('Eviter les accolade',
          style: TextStyle(
            fontWeight: FontWeight.w800,
            color: Colors.white,
            fontSize: 30.0,
          )),
      body: Text('loremlorem lorem loremlorem lorem loremlorem lorem lorem',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
          )),
      iconAssetPath: 'assets/images/hi.png',
    ),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FancyOnBoarding(
        doneButtonText: 'Done',
        skipButtonText: 'Skip',
        pageList: pageList, 
        onDoneButtonPressed: () => Navigator.of(context).pushReplacementNamed(DashbordScreen.routeName),
        onSkipButtonPressed: () => Navigator.of(context).pushReplacementNamed(DashbordScreen.routeName),
      ),
    );
  }
}