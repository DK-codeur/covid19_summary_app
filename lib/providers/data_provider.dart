import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../providers/models/corona.dart';
import '../providers/models/country.dart';

// CoronaProvider
class CoronaProvider with ChangeNotifier{

  final publicLink = 'https://api.covid19api.com'; 

  Corona _corona ;

  //get data
  Corona get corona {
    return _corona;
  }

  

  List<Country> _country = [];

  List<Country> get country {
    return [..._country];
  }

  Future<void> fetchAndSetData() async {
    final url = '$publicLink/summary';

    try {
      final response = await http.get(url);
      final extractedData = json.decode(response.body);
      // print(extractedData);

      if(extractedData == null) {
        return;
      }

      var data = Corona.fromJson(extractedData);
      var ctry = data.countries;

      _corona = data;
      notifyListeners();
      
      print(corona);

      final List<Country> loadedCountry = [];
      for (var i = 0; i < ctry.length; i++) {
        var restoItem = ctry[i]; 
        loadedCountry.add(restoItem);
      }

      _country = loadedCountry;
      print('[the instances of countries]');
      notifyListeners();
      
    } catch (e) {
      throw e;
    }
  }


  //local news
  Country localNew() {
    return _country.firstWhere((ctry) => ctry.slug == "cote-divoire");
  }

  DateTime get getDate {
    return _corona.date;
  }
  

}

//AnyCountryProvider
// class AnyCountryProvider with ChangeNotifier {

//   AnyCountry _anyCountryConf;
//   AnyCountry get anyCountryConf {
//     return _anyCountryConf;
//   }

//   AnyCountry _anyCountryDeath;
//   AnyCountry get anyCountryDeath {
//     return _anyCountryDeath;
//   }

//   AnyCountry _anyCountryRecov;
//   AnyCountry get anyCountryRecov {
//     return _anyCountryRecov;
//   }


//   Future<void> fetchAndSetAnyCountry() async {

//     Map<String, String> status = {
//       'confirmed' : 'confirmed',
//       'deaths' : 'deaths',
//       'recovered' : 'recovered',
//     };  

//     final anyurlConf = 'https://api.covid19api.com/live/country/cote-divoire/status/${status['confirmed']}';
//     final anyurlDeaths = 'https://api.covid19api.com/live/country/cote-divoire/status/${status['deaths']}';
//     final anyurlRecov = 'https://api.covid19api.com/live/country/cote-divoire/status/${status['recovered']}';

//     try {
//       final response = await http.get(anyurlConf);
//       final response2 = await http.get(anyurlDeaths);
//       final response3 = await http.get(anyurlRecov);

//       final extractedData = json.decode(response.body);
//       final extractedData2 = json.decode(response2.body);
//       final extractedData3 = json.decode(response3.body);

//       if(extractedData == null || extractedData2 == null || extractedData3 == null) {
//         return;
//       }


//       final loadedData = AnyCountry.fromJson(extractedData.last);
//       _anyCountryConf = loadedData;
//       notifyListeners();

//       final loadedData2 = AnyCountry.fromJson(extractedData2.last);
//       _anyCountryDeath = loadedData2;
//       notifyListeners();

//       final loadedData3 = AnyCountry.fromJson(extractedData3.last);
//       _anyCountryRecov = loadedData3;
//       notifyListeners();

//       print('Any COUNTRY Conf: ${_anyCountryConf.status}');
//       print('Any COUNTRY Death: ${_anyCountryDeath.status}');
//       print('Any COUNTRY Recov: ${_anyCountryRecov.status}');

//     } catch (e) {
//       throw e;
//     }

//   }


// }

 