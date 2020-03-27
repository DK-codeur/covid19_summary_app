import 'package:flutter/material.dart';
import '../shared/colors.dart';
import '../widget/latest_new.dart';
import '../shared/functions.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
                    color: primaryDark2,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    )
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Column(
                      children: <Widget>[
                        buildLastNewText('Local Last News'),

                        LatestNew(country: "Côte d'Ivoire", flag: 'ci.png', totalConf: 80, totalDeath: 0, totalRecov: 3,),
                        
                        buildLastNewText('More infected'),

                        LatestNew(country: "France", flag: 'fr.png', totalConf: 3200, totalDeath: 1200, totalRecov: 2000,),
                        LatestNew(country: "Chine", flag: 'cn.png', totalConf: 5300, totalDeath: 300, totalRecov: 5000,),
                      ],
                    ),
                  ),
                  
                )
              ],
            ),
          ],
        ),
      );
  }

  
}