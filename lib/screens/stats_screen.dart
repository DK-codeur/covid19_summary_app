import 'package:covid19_summary_app/widget/cdr_pie_chart.dart';
import 'package:flutter/material.dart';

import '../widget/confirmed_line_chart.dart';
import '../shared/colors.dart';
import '../shared/functions.dart';

class StatsScreen extends StatefulWidget {
  @override
  _StatsScreenState createState() => _StatsScreenState();
}

class _StatsScreenState extends State<StatsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryDark,
      appBar: AppBar(
        title: buildAppbarTitle('Statistics'),
        backgroundColor: primaryDark,
        // elevation: 30.0,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: <Widget>[
            buildStatsTitleText('Total confirmed last 3 months'),
            ConfirmedLineChart(),
            SizedBox(height: 15),
            buildStatsTitleText('Confirmed - Death - Recovered cases'),
            CdrPieChart(),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}