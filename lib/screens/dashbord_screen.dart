import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:covid19_summary_app/screens/home_screen.dart';
import 'package:covid19_summary_app/shared/functions.dart';
import 'package:covid19_summary_app/widget/latest_new.dart';

import '../shared/colors.dart';
import 'package:flutter/material.dart';

class DashbordScreen extends StatefulWidget {
  @override
  _DashbordScreenState createState() => _DashbordScreenState();
}

class _DashbordScreenState extends State<DashbordScreen> {

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final _tabs = [
    HomeScreen(),
    Scaffold(body: Center(child: Text('another'),)),
    Scaffold(body: Center(child: Text('another2'),)),
    Scaffold(body: Center(child: Text('another3'),)),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: primaryDark2,
        body: _tabs[_selectedIndex],

        bottomNavigationBar: buildBubbleBottomBar(_selectedIndex, _onItemTapped),
      ),
    );
  }


  



}