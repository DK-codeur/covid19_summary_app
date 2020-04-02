import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/models/country.dart';
import '../shared/colors.dart';
import '../shared/functions.dart';

class SummaryItem extends StatefulWidget {
  @override
  _SummaryItemState createState() => _SummaryItemState();
}

class _SummaryItemState extends State<SummaryItem> {
  @override
  Widget build(BuildContext context) {

    //country
    final country = Provider.of<Country>(context, listen: false);

    return Container(
      margin: EdgeInsets.symmetric(vertical: 14.0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              CircleAvatar(
                radius: 16,
                backgroundImage: AssetImage(
                  'assets/images/ci.png'
                ),
              ),
              InkWell(
                onTap: () {print('tapppped');},
                child: Container(
                  padding: EdgeInsets.all(8),
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: BoxDecoration(
                    color: primaryDark1,
                    borderRadius: BorderRadius.all(Radius.circular(5))
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "${country.country}",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: whiteColor
                        ),
                      ),

                      Icon(Icons.arrow_forward_ios, size: 13.2, color: whiteColor),
                        
                    ],
                  ),
                ),
              )
            ],
          ),

          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              width: MediaQuery.of(context).size.width * .95,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white12, width: 1),
                borderRadius: BorderRadius.all(Radius.circular(7.0))
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                      buildSummaryColumn('Confirmed', country.totalConfirmed, Colors.blue),
                      buildPip(),
                      buildSummaryColumn('Death   ', country.totalDeaths, Colors.red),
                      buildPip(),
                      buildSummaryColumn('Recovered', country.totalRecovered, Colors.green),
                  ],
                ),
              ),
              
            ),
          )
        ],
      ),
    );
  }
}