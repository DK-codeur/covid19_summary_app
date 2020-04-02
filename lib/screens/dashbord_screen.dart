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
  var _isInit = true;
  var _isLoading = false;

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
  void didChangeDependencies() {
    if(_isInit) {
      setState(() {
        _isLoading = true;
      });

      Provider.of<CoronaProvider>(context).fetchAndSetData().then((_) {
        setState(() {
          _isLoading = false;
        });
      });

      
    }

    _isInit = false;
    super.didChangeDependencies();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryDark2,
      body: (_isLoading) 
      ? Container(
        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height / 2),
        child: Center(
          child: Text('Loading...')
        ),
      )
      : _tabs[_selectedIndex],

      bottomNavigationBar: buildBubbleBottomBar(_selectedIndex, _onItemTapped),
    );
  }


  



}