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
      color: const Color(0xFFDD4C40),
      heroAssetPath: 'assets/images/covid.png',
      title: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          'Luttons Contre le COVID-19',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.white,
            fontSize: 26.0,
          )
        ),
      ),
      body: Container(),
      iconAssetPath: 'assets/images/covid.png'
    ),

    PageModel(
      // const Color(0xFF678FB4)
      color: Colors.blue,
      heroAssetPath: 'assets/images/hands.png',
      title: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          'Laver regulièrement vos mains au savon',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.white,
            fontSize: 26.0,
          )
        ),
      ),
      body: Container(),
      iconAssetPath: 'assets/images/hands.png'
    ),

    PageModel(
      color: Colors.pink,
      heroAssetPath: 'assets/images/gel.png',
      title: Text(
        '...ou avec du gel hydroalcoolique',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.w600,
          color: Colors.white,
          fontSize: 26.0,
        )
      ),
      body: Container(),
      iconAssetPath: 'assets/images/gel.png'
    ),

    PageModel(
      color: Colors.green,
      heroAssetPath: 'assets/images/mask.png',
      title: Text(
        'Porter un masque de protection',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.w600,
          color: Colors.white,
          fontSize: 26.0,
        )
      ),
      body: Container(),
      iconAssetPath: 'assets/images/mask.png'
    ),

    PageModel(
      color: Colors.indigo,
      heroAssetPath: 'assets/images/hi.png',
      title: Text(
        'Eviter tous contact avec des tiers personnes',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.w600,
          color: Colors.white,
          fontSize: 26.0,
        )
      ),
      body: Container(),
      iconAssetPath: 'assets/images/hi.png'
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