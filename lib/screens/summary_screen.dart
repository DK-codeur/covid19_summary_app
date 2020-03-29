import 'package:flutter/material.dart';

import '../shared/colors.dart';
import '../shared/functions.dart';

class SummaryScreen extends StatefulWidget {
  @override
  _SummaryScreenState createState() => _SummaryScreenState();
}

class _SummaryScreenState extends State<SummaryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryDark,
      appBar: AppBar(
        title: buildAppbarTitle("All Country Info"),
        backgroundColor: primaryDark,
        elevation: 50,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(42),
          child: Padding(
            padding: const EdgeInsets.all(9.0),
            child: Container(
              height: 35,
              width: MediaQuery.of(context).size.width * 0.9,
              child: TextFormField(
                style: TextStyle(
                  color: whiteColor
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Search country...',
                  contentPadding: EdgeInsets.fromLTRB(12, 5, 5, 5),
                  hintStyle: TextStyle(
                    fontFamily: 'CenturyGothic',
                    color: whiteColor,
                    fontSize: 12.8,
                    letterSpacing: 1.5
                  ),
                  suffixIcon: Material(
                    shadowColor: Colors.white,
                    color: whiteColor,
                    elevation: 5.0,
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    child: Icon(
                      Icons.search,
                      color: primaryDark3
                    )
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: primaryDark3,
                borderRadius: BorderRadius.all(Radius.circular(10.0))
              ),
            ),
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.only(top: 5.0),
        child: ListView(
          children: <Widget>[
            
            Container(
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
                      Container(
                        padding: EdgeInsets.all(8),
                        width: MediaQuery.of(context).size.width * 0.8,
                        decoration: BoxDecoration(
                          color: primaryDark1,
                          borderRadius: BorderRadius.all(Radius.circular(5))
                        ),
                        child: Text(
                          "Côte d'Ivoire",
                          style: TextStyle(
                          fontFamily: 'Poppins',
                          color: whiteColor
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
                             buildSummaryColumn('Confirmed', 8000, Colors.blue),
                             buildPip(),
                             buildSummaryColumn('Death   ', 20, Colors.red),
                             buildPip(),
                             buildSummaryColumn('Recovered', 780, Colors.green),
                          ],
                        ),
                      ),

                      
                    ),
                  )
                ],
              ),
            ),

                   

          Container(
             margin: EdgeInsets.symmetric(vertical: 14.0),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 16,
                        backgroundImage: AssetImage(
                          'assets/images/fr.png'
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(8),
                        width: MediaQuery.of(context).size.width * 0.8,
                        decoration: BoxDecoration(
                          color: primaryDark1,
                          borderRadius: BorderRadius.all(Radius.circular(5))
                        ),
                        child: Text(
                          "France",
                          style: TextStyle(
                          fontFamily: 'Poppins',
                          color: whiteColor
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
                             buildSummaryColumn('Confirmed', 8000, Colors.blue),
                             buildPip(),
                             buildSummaryColumn('Death   ', 20, Colors.red),
                             buildPip(),
                             buildSummaryColumn('Recovered', 780, Colors.green),
                          ],
                        ),
                      ),

                      
                    ),
                  )
                ],
              ),
            ),



            Container(
              margin: EdgeInsets.symmetric(vertical: 14.0),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 16,
                        backgroundImage: AssetImage(
                          'assets/images/cn.png'
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(8),
                        width: MediaQuery.of(context).size.width * 0.8,
                        decoration: BoxDecoration(
                          color: primaryDark1,
                          borderRadius: BorderRadius.all(Radius.circular(5))
                        ),
                        child: Text(
                          "Chine",
                          style: TextStyle(
                          fontFamily: 'Poppins',
                          color: whiteColor
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
                             buildSummaryColumn('Confirmed', 8000, Colors.blue),
                             buildPip(),
                             buildSummaryColumn('Death   ', 20, Colors.red),
                             buildPip(),
                             buildSummaryColumn('Recovered', 780, Colors.green),
                          ],
                        ),
                      ),

                      
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  
}