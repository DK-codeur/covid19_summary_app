import 'package:covid19_summary_app/providers/data_provider.dart';
import 'package:covid19_summary_app/widget/summary_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../shared/colors.dart';
import '../shared/functions.dart';

class SummaryScreen extends StatefulWidget {
  @override
  _SummaryScreenState createState() => _SummaryScreenState();
}

class _SummaryScreenState extends State<SummaryScreen> {

  var _isInit = true;
  var _isLoading = false;

  Future refreshData(BuildContext context) async {
    await Provider.of<CoronaProvider>(context).fetchAndSetData();
  }

  @override
  void didChangeDependencies() {
    if(_isInit) {
      setState(() {
        _isLoading = true;
      });

      Provider.of<CoronaProvider>(context).fetchAndSetData().then((_) {
        setState(() {
          _isLoading = false;
        });
      });
    }

    _isInit = false;
    super.didChangeDependencies();
  }

  @override
  void initState() {
    // Future.delayed(Duration.zero).then((_) {
    //   Provider.of<CoronaProvider>(context).fetchAndSetData();
    // });
    super.initState();
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
                  contentPadding: EdgeInsets.fromLTRB(12, 0, 5, 5),
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

      body: (_isLoading) 
      ? Center(child: Text('Loading...'),) 
      : RefreshIndicator(
        onRefresh: () => refreshData(context),
        child: Padding(
          padding: const EdgeInsets.only(top: 5.0),
            child: ListView.builder(
              itemCount: country.length - 1,
              itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
                value: country[i+1],
                child: SummaryItem(),
              ),
            ),
        )
      )
    );
  }
}




// ListView.builder(
//               itemCount: coronaCountry.length,
//               itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
//                 value: coronaCountry[i],
//                 child: SummaryItem(),
//               ),
//             ),