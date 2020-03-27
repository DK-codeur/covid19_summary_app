import 'package:covid19_summary_app/shared/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './screens/dashbord_screen.dart';

void main() async { 
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'COVID19 summary',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey
      ),
      home: DashbordScreen(),
    );
  }
}


