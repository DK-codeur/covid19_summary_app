import 'package:covid19_summary_app/shared/colors.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

import './cdr_pie_chart_indicator.dart';


class CdrPieChart extends StatefulWidget {
  @override
  _CdrPieChartState createState() => _CdrPieChartState();
}

class _CdrPieChartState extends State<CdrPieChart> {

  int touchedIndex;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.3,
      child: Container(
        color: primaryDark3,
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: AspectRatio(
                    aspectRatio: 1.6,
                    child: PieChart(
                      PieChartData(
                        pieTouchData: PieTouchData(
                          touchCallback: (pieTouchResponse) {
                            setState(() {
                              if (pieTouchResponse.touchInput is FlLongPressEnd || pieTouchResponse.touchInput is FlPanEnd) {
                                touchedIndex = -1;
                              } else {
                                touchedIndex = pieTouchResponse.touchedSectionIndex;
                              }
                            });
                          }
                        ),

                        borderData: FlBorderData(
                          show: false,
                        ),

                        sectionsSpace: 0,
                        centerSpaceRadius: 40,
                        
                        sections: showingSections()
                      ),
                    ),
                  ),
                ),

                
              ],
            ),

            //legend
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Indicator(
                  color: Colors.green,
                  text: 'Recovered',
                  numb: "300k",
                  isSquare: true,
                ),
                SizedBox(
                  height: 4,
                ),
                Indicator(
                  color: Colors.red,
                  text: 'Death',
                  numb: "120",
                  isSquare: true,
                ),
                SizedBox(
                  height: 4,
                ),
                Indicator(
                  color: Colors.blue,
                  text: 'In Cases',
                  isSquare: true,
                  numb: "310k",
                ),
                SizedBox(
                  height: 4,
                ),
                
              ],
            ),
            const SizedBox(
              width: 28,
            ),
          ],

        ),
      ),
    );
  }


  List<PieChartSectionData> showingSections() {
    return List.generate(3, (i) {

      final isTouched = i == touchedIndex;
      final double fontSize = isTouched ? 25 : 16;
      final double radius = isTouched ? 60 : 50;

      switch (i) {
        case 0:
          return PieChartSectionData( //partie of pie chart
            color: Colors.red,
            value: 20, // take $value % of pie chart
            title: '25%',  // title
            radius: radius,
            titleStyle: TextStyle( //title style
              fontSize: fontSize, 
              fontWeight: FontWeight.bold, 
              color: const Color(0xffffffff)
            ),
          );

        case 1:
          return PieChartSectionData(
            color: Colors.blue,
            value: 30,
            title: '30%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize, 
              fontWeight: FontWeight.bold, 
              color: const Color(0xffffffff)
            ),
          );

        case 2:
          return PieChartSectionData(
            color: Colors.green,
            value: 45,
            title: '45%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize, 
              fontWeight: FontWeight.bold, 
              color: const Color(0xffffffff)
            ),
          );

        default: return null;
      }
    }
  );
  }
}