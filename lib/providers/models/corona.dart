// To parse this JSON data, do
//
//     final corona = coronaFromJson(jsonString);

import 'dart:convert';
import './country.dart';

Corona coronaFromJson(String str) => Corona.fromJson(json.decode(str));

String coronaToJson(Corona data) => json.encode(data.toJson());

class Corona {
  List<Country> countries;
  DateTime date;

  Corona({ this.countries, this.date,});

  factory Corona.fromJson(Map<String, dynamic> myjson) => Corona(
    countries: List<Country>.from(myjson["Countries"].map((x) => Country.fromJson(x))),
    date: DateTime.parse(myjson["Date"]),
  );

  // factory Corona.fromJson(Map<String, dynamic> myjson2) {
    
  //   var country = myjson2['countries'] as List;
  //   List<Country> countryList = country.map((i) => Country.fromJson(i)).toList();

  //   return Corona(
  //     countries: countryList,
  //     date: DateTime.parse(myjson2['Date'])
  //   );

  // }


    Map<String, dynamic> toJson() => {
      "Countries": List<dynamic>.from(countries.map((x) => x.toJson())),
      "Date": date.toIso8601String(),
    };
}
