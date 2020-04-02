import 'package:flutter/material.dart';

class Country with ChangeNotifier{

  String country;
  String slug;
  int newConfirmed;
  int totalConfirmed;
  int newDeaths;
  int totalDeaths;
  int newRecovered;
  int totalRecovered;

  Country({
    this.country,
    this.slug,
    this.newConfirmed,
    this.totalConfirmed,
    this.newDeaths,
    this.totalDeaths,
    this.newRecovered,
    this.totalRecovered,
  });

    factory Country.fromJson(Map<String, dynamic> myjson) => Country(
      country: myjson["Country"],
      slug: myjson["Slug"],
      newConfirmed: myjson["NewConfirmed"],
      totalConfirmed: myjson["TotalConfirmed"],
      newDeaths: myjson["NewDeaths"],
      totalDeaths: myjson["TotalDeaths"],
      newRecovered: myjson["NewRecovered"],
      totalRecovered: myjson["TotalRecovered"],
    );

    Map<String, dynamic> toJson() => {
        "Country": country,
        "Slug": slug,
        "NewConfirmed": newConfirmed,
        "TotalConfirmed": totalConfirmed,
        "NewDeaths": newDeaths,
        "TotalDeaths": totalDeaths,
        "NewRecovered": newRecovered,
        "TotalRecovered": totalRecovered,
    };
}
