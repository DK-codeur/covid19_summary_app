import 'package:covid19_summary_app/shared/colors.dart';
import 'package:flutter/material.dart';

class Indicator extends StatelessWidget {
  final Color color;
  final String text;
  final String numb;
  final bool isSquare;
  final double size;
  final Color textColor;

  const Indicator({
    Key key,
    this.color,
    this.text,
    this.numb,
    this.isSquare,
    this.size = 16,
    this.textColor = whiteColor
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            shape: isSquare ? BoxShape.rectangle : BoxShape.circle,
            color: color,
          ),
        ),
        const SizedBox(
          width: 4,
        ),
        Column(
          children: <Widget>[
            Text(
              text,
              style: TextStyle(
                fontSize: 14, 
                // fontWeight: FontWeight.bold, 
                color: textColor,
                fontFamily: 'CenturyGhotic'
              ),
            ),

            Text(
              numb,
              style: TextStyle(
                fontSize: 12.6, 
                // fontWeight: FontWeight.bold, 
                color: textColor,
                fontFamily: 'CenturyGhotic'
              ),
            ),
          ],
        )
      ],
    );
  }
}