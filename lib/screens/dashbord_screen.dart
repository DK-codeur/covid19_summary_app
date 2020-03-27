import 'package:covid19_summary_app/widget/latest_new.dart';

import '../shared/colors.dart';
import 'package:flutter/material.dart';

class DashbordScreen extends StatefulWidget {
  @override
  _DashbordScreenState createState() => _DashbordScreenState();
}

class _DashbordScreenState extends State<DashbordScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: primaryDark2,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height /2.3,
                    // width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(
                          'assets/images/n1.jpg',
                        )
                      )
                    ),
                  ),

                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    margin: EdgeInsets.only(top: 15, right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Colors.black38,
                          child: Icon(Icons.notification_important, color: Colors.white,)
                        ),
                      ],
                    ),
                  ),

                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(top: 220),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      )
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(14.0),
                            child: Row(
                              children: <Widget>[
                                Text(
                                  'Last News',
                                  style: TextStyle(
                                    fontSize: 22.0, 
                                    fontWeight: FontWeight.bold, 
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                              ],
                            ),
                          ),

                          SizedBox(height: 25.0,),

                          LatestNew(country: "Côte d'Ivoire", flag: 'ci.png',),
                          LatestNew(country: "France", flag: 'fr.png',),
                          LatestNew(country: "Chine", flag: 'cn.png',),
                        ],
                      ),
                    ),
                    
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

 


}