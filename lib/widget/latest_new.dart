import 'package:covid19_summary_app/shared/functions.dart';
import 'package:flutter/material.dart';

class LatestNew extends StatelessWidget {
  final String country;
  final String flag;

  const LatestNew({Key key, this.country, this.flag}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: MediaQuery.of(context).size.width * 0.98,
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: Card(
        elevation: 10,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Image.asset(
                    'assets/images/$flag'
                  ),
                  SizedBox(width: 12,),
                  Text(
                    country,
                    style: TextStyle(
                      fontFamily: 'CenturyGothic'
                    ),
                  )
                ],
              ),

              SizedBox(height: 25.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  buildContainer('Confirmed', 80, Colors.blue, Colors.blue.withOpacity(0.6),),
                  buildContainer('Death', 0, Colors.red, Colors.red.withOpacity(0.6),),
                  buildContainer('Recovered', 3, Colors.green, Colors.green.withOpacity(0.6),),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}