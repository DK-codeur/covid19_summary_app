import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dart:math';

import '../widget/summary_item.dart';
import '../providers/data_provider.dart';
import '../shared/colors.dart';
import '../shared/functions.dart';

class SummaryScreen extends StatefulWidget {
  @override
  _SummaryScreenState createState() => _SummaryScreenState();
}

class _SummaryScreenState extends State<SummaryScreen> {

  Future refreshData(BuildContext context) async {
    await Provider.of<CoronaProvider>(context).fetchAndSetData();
  }
    

  @override
  Widget build(BuildContext context) {

    final country = Provider.of<CoronaProvider>(context).country;

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
            child: GestureDetector(
              onTap: () {
                showSearch(
                  context: context,
                  delegate: DataSearch()
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      height: 35,
                      width: MediaQuery.of(context).size.width * 0.8,            
                      decoration: BoxDecoration(
                        color: primaryDark3,
                        borderRadius: BorderRadius.all(Radius.circular(10.0))
                      ),

                      child: Center(
                        child: Text(
                          'Search country...',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontFamily: 'CenturyGothic',
                            color: whiteColor,
                            fontSize: 12.8,
                            letterSpacing: 1.5
                          ),
                        ),
                      )
                    ),
                  ),

                  Material(
                    shadowColor: Colors.white,
                    color: whiteColor,
                    elevation: 3.0,
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Icon(
                        Icons.search,
                        color: primaryDark3
                      ),
                    )
                  ),

                ],
              ),
            ),
          ),
        ),
      ),

      body: RefreshIndicator(
        onRefresh: () => refreshData(context),
        child: Padding(
          padding: const EdgeInsets.only(top: 5.0),
            child: ListView.builder(
              itemCount: country.length - 2,
              itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
                value: country[i+2],
                child: SummaryItem(),
              ),
            ),
        )
      )
    );
  }
}



//DataSearch
class DataSearch extends SearchDelegate {

  @override
  List<Widget> buildActions(BuildContext context) {
    // Action  for appbar
    return [
      IconButton(
        icon: Icon(Icons.clear), 
        onPressed: () {
          query = '';
        }
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // leading
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow, 
        progress: transitionAnimation,
      ), 
      onPressed: () {
        close(context, null);
      }
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // show result
    return null;

  } 

  @override
  Widget buildSuggestions(BuildContext context) {
    // show suggestion or query
    final country = Provider.of<CoronaProvider>(context).country;
    final recentList = [];
    
    Random r = new Random();
    int rr = r.nextInt(country.length);

    for (var i = 0; i < rr/25; i++) {
      country.shuffle();
      recentList.add(country[i]);
      if(i ==7) break;
    }

    final suggestionList = query.isEmpty 
                            ? recentList 
                            : country.where((ctry) => ctry.slug.startsWith(query)).toList();

    return ListView.builder(
      itemCount: suggestionList.length,
      itemBuilder: (ctx, i) => ListTile(
        onTap: () {
          query = suggestionList[i].slug;
          // showResults(context);
        },
        leading: (query.isEmpty) ? Icon(Icons.history) : Icon(Icons.flag),
        title: RichText(
          text: TextSpan(
            text: suggestionList[i].country.substring(0, query.length),
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700
            ),
            children: [
              TextSpan(
                text: suggestionList[i].country.substring(query.length),
                style: TextStyle(color: Colors.grey)
              )
            ]
          ),
        ),
        subtitle: Text(
          'Total Confirmed: ${suggestionList[i].totalConfirmed}'
        ),
      )
    ) ;
    
  }
}



