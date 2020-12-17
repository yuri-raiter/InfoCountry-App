import 'dart:convert' as convert;
import 'package:appFlutter/Objects/country.dart';
import 'package:appFlutter/util/dialogs.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

Future<Country> getCountry(BuildContext context, String countryName) async {
  final response = await http
      .get('https://restcountries.eu/rest/v2/name/$countryName?fullText=true');
  var data;
  if (response.statusCode == 200) {
    data = convert.jsonDecode(response.body);
    return Country.fromJson(data[0]);
  } else {
    wrongNameDialog(context, countryName);
  }
  /*else {
    throw Exception('Failed to load country');
  }*/
}

Future<List<dynamic>> getAllCountries() async {
  final response = await http.get('https://restcountries.eu/rest/v2/all');
  var data;
  if (response.statusCode == 200) {
    data = convert.jsonDecode(response.body);
  }
  return data;

  /*else {
    throw Exception('Failed to load all countries');
  }*/
}

Future<List<dynamic>> getCountriesByContinent(String continent) async {
  final response =
      await http.get('https://restcountries.eu/rest/v2/region/$continent');
  var data;
  if (response.statusCode == 200) {
    data = convert.jsonDecode(response.body);
  }
  return data;

  /*else {
    throw Exception('Failed to load the countries of this Continent');
  }*/
}
