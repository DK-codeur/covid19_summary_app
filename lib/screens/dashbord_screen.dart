import 'package:flutter/material.dart';

import './summary_screen.dart';
import '../screens/home_screen.dart';
import '../shared/functions.dart';
import '../shared/colors.dart';

class DashbordScreen extends StatefulWidget {
  static const routeName = '/dashbord';

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
    SummaryScreen(),
    Scaffold(body: Center(child: Text('Graph stats'),)),
    Scaffold(body: Center(child: Text('News'),)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryDark2,
      body: _tabs[_selectedIndex],

      bottomNavigationBar: buildBubbleBottomBar(_selectedIndex, _onItemTapped),
    );
  }


  



}