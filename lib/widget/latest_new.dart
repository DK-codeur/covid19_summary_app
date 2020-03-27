import 'package:covid19_summary_app/shared/colors.dart';
import 'package:covid19_summary_app/shared/functions.dart';
import 'package:flutter/material.dart';

class LatestNew extends StatelessWidget {
  final String country;
  final String flag;
  final int totalConf;
  final int totalDeath;
  final int totalRecov;

  const LatestNew({Key key, this.country, this.flag, this.totalConf, this.totalDeath, this.totalRecov}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: MediaQuery.of(context).size.width * 0.98,
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: Card(
        elevation: 8.0,
        color: primaryDark,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 2.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: <Widget>[
                    Image.asset(
                      'assets/images/$flag'
                    ),
                    SizedBox(width: 12,),
                    Text(
                      country,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: whiteColor
                      ),
                    )
                  ],
                ),
              ),

              SizedBox(height: 25.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  buildContainer('Confirmed', totalConf, Colors.blue, Colors.blue.withOpacity(0.6),),
                  buildContainer('Death', totalDeath, Colors.red, Colors.red.withOpacity(0.6),),
                  buildContainer('Recovered', totalRecov, Colors.green, Colors.green.withOpacity(0.6),),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}