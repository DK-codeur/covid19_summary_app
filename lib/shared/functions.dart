import 'package:flutter/material.dart';
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';

import './colors.dart';

  //buildContainer
  Container buildContainer(String title, int numb, Color color1, Color color2,) {
    return Container(
      height: 90,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight
        )
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text('Total',),
            Text(title),
            SizedBox(height: 5,),
            Text(
              '$numb',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Poppins',
                color: Colors.white
              ),
            ),
          ],
        ),
      ),
    );
  }


  //BubbleBottomBar
  BubbleBottomBar buildBubbleBottomBar(int selectedIndex, void Function(int) onItemTapped) {
    return BubbleBottomBar(
      opacity: 0.2,
      backgroundColor: Colors.black12,
      currentIndex: selectedIndex,
      onTap: onItemTapped,
      borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      elevation: 12,
      // fabLocation: BubbleBottomBarFabLocation.end, //new
      hasNotch: true, //new
      hasInk: true, //new, gives a cute ink effect
      inkColor: Colors.black12, //optional, uses theme color if not specified
      items: <BubbleBottomBarItem>[
          BubbleBottomBarItem(backgroundColor: Colors.blue, icon: Icon(Icons.dashboard, color: Colors.white60,), activeIcon: Icon(Icons.dashboard, color: Colors.blue,), title: Text("Dashbord")),
          BubbleBottomBarItem(backgroundColor: Colors.blue, icon: Icon(Icons.bubble_chart, color: Colors.white60,), activeIcon: Icon(Icons.bubble_chart, color: Colors.blue,), title: Text("Summary")),
          BubbleBottomBarItem(backgroundColor: Colors.blue, icon: Icon(Icons.insert_chart, color: Colors.white60,), activeIcon: Icon(Icons.insert_chart, color: Colors.blue,), title: Text("Stats")),
          BubbleBottomBarItem(backgroundColor: Colors.blue, icon: Icon(Icons.library_books, color: Colors.white60,), activeIcon: Icon(Icons.library_books, color: Colors.blue,), title: Text("News"))
      ],
    );
  }


//buildLastNewText
  Padding buildLastNewText(String text) {
    return Padding(
      padding: const EdgeInsets.all(13.0),
      child: Row(
        children: <Widget>[
          Text(
            text,
            style: TextStyle(
              fontSize: 20.0, 
              fontFamily: 'Poppins',
              // fontWeight: FontWeight.bold, 
              color: Colors.white70
            ),
          ),
        ],
      ),
    );
  }

  //build pip
  Container buildPip() {
    return Container(
      width: 1,
      height: 70,
      color: whiteColor,
    );
  }

  //buildSummaryColumn
  Padding buildSummaryColumn(String title, int numb, Color color,) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Total',
            style: TextStyle(
              // fontFamily: 'Poppins',
              fontSize: 13.1,
              color: whiteColor
            ),
          ),
          Text(
            title,
            style: TextStyle(
              fontFamily: 'CenturyGothic',
              fontSize: 13.8,
              color: whiteColor,
              fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            '$numb',
            style: TextStyle(
              // fontFamily: 'Poppins',
              fontSize: 22.4,
              color: color,
              fontWeight: FontWeight.w500
            ),
          ),
        ],
      ),
    );
  }