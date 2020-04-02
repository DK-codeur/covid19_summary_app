import 'package:covid19_summary_app/providers/data_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './stats_screen.dart';
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
    StatsScreen(),
    Scaffold(body: Center(child: Text('News'),)),
  ];

  
@override
  void initState() {
    Future.delayed(Duration.zero).then((_) {
      Provider.of<CoronaProvider>(context).fetchAndSetData();
      Provider.of<AnyCountryProvider>(context).fetchAndSetAnyCountry();
    });
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryDark2,
      body: _tabs[_selectedIndex],

      bottomNavigationBar: buildBubbleBottomBar(_selectedIndex, _onItemTapped),
    );
  }


  



}