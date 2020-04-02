// To parse this JSON data, do
//
//     final AnyCountry = AnyCountryFromJson(jsonString);

import 'dart:convert';

import 'package:flutter/material.dart';

List<AnyCountry> anyCountryFromJson(String str) => List<AnyCountry>.from(json.decode(str).map((x) => AnyCountry.fromJson(x)));

String anyCountryToJson(List<AnyCountry> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class AnyCountry with ChangeNotifier {
  MyCountry country;
  String province;
  double lat;
  double lon;
  DateTime date;
  int cases;
  Status status;

  AnyCountry({
    this.country,
    this.province,
    this.lat,
    this.lon,
    this.date,
    this.cases,
    this.status,
  });

    factory AnyCountry.fromJson(Map<String, dynamic> json) => AnyCountry(
        country: countryValues.map[json["Country"]],
        province: json["Province"],
        lat: json["Lat"].toDouble(),
        lon: json["Lon"].toDouble(),
        date: DateTime.parse(json["Date"]),
        cases: json["Cases"],
        status: statusValues.map[json["Status"]],
    );

    Map<String, dynamic> toJson() => {
        "Country": countryValues.reverse[country],
        "Province": province,
        "Lat": lat,
        "Lon": lon,
        "Date": date.toIso8601String(),
        "Cases": cases,
        "Status": statusValues.reverse[status],
    };
}

  enum MyCountry {
    COTE_D_IVOIRE 
  }

  final countryValues = EnumValues({
    "Cote d'Ivoire": MyCountry.COTE_D_IVOIRE
  });


  enum Status { 
    CONFIRMED 
  }
  
  final statusValues = EnumValues({
    "confirmed": Status.CONFIRMED
  });

class EnumValues<T> {
    Map<String, T> map;
    Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        if (reverseMap == null) {
            reverseMap = map.map((k, v) => new MapEntry(v, k));
        }
        return reverseMap;
    }
}
