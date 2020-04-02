import 'package:carousel_pro/carousel_pro.dart';
import 'package:covid19_summary_app/providers/data_provider.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../shared/colors.dart';
import '../widget/latest_new.dart';
import '../shared/functions.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  Future refreshData(BuildContext context) async {
    await Provider.of<CoronaProvider>(context).fetchAndSetData();
  }

  // @override
  // void initState() {
  //   Future.delayed(Duration.zero).then((_) {
  //     Provider.of<CoronaProvider>(context).fetchAndSetData();
  //   });
  //   super.initState();
  // }


  @override
  Widget build(BuildContext context) {

    final coronaProvider = Provider.of<CoronaProvider>(context, listen: false);
    final country = coronaProvider.country;
    final date = Provider.of<CoronaProvider>(context).getDate;

    return SingleChildScrollView(
      child: RefreshIndicator(
            onRefresh: () => refreshData(context),
            child: Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.height / 3,
                      // width: double.infinity,
                      child: Carousel(
                        images: [
                          AssetImage('assets/images/n4.jpg'),
                          AssetImage('assets/images/n3.jpg'),
                          AssetImage('assets/images/n1.jpg'),
                          // ExactAssetImage("assets/images/LaunchImage.jpg")
                        ],
                        
                        animationCurve: Curves.linearToEaseOut,
                        autoplayDuration: const Duration(seconds: 6),
                        animationDuration: const Duration(milliseconds: 800),
                        dotPosition: DotPosition.topLeft,
                        dotIncreasedColor: Colors.white60,
                        dotColor: primaryDark,
                        dotVerticalPadding: 25.0,
                        dotSize: 4.0,
                        dotSpacing: 15.0,
                        indicatorBgPadding: 5.0,
                        dotBgColor: Colors.black.withOpacity(0.5),
                        borderRadius: true,
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
                            Padding(
                              padding: const EdgeInsets.only(left: 13.0),
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    'Updated: ${DateFormat('dd/MM/yyyy hh:mm a').format(date)}',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 11.2,
                                      color: whiteColor,
                                      letterSpacing: 1.3
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            LatestNew(country: coronaProvider.localNew().country, flag: 'ci.png', totalConf: coronaProvider.localNew().totalConfirmed, totalDeath: coronaProvider.localNew().totalDeaths, totalRecov: coronaProvider.localNew().totalRecovered,),
                            
                            buildLastNewText('More infected'),
                            
                            Column(
                              children: country.where((ctry) => ctry.totalConfirmed >= 25500).map((ctry) {
                                return LatestNew(country: ctry.country, flag: 'ci.png', totalConf: ctry.totalConfirmed, totalDeath: ctry.totalDeaths, totalRecov: ctry.totalRecovered,);
                              }).toList()
                            )
                            
                          ],
                        ),
                      ),
                      
                    )
                  ],
                ),
              ],
            ),
        
      ),
    );
  }
  
}