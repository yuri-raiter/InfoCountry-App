import 'package:appFlutter/controller/controller.dart' as controller;
import 'package:appFlutter/screens/AllCountries/countriesList.dart';
import 'package:appFlutter/services/api.dart';
import 'package:flutter/material.dart';

class ContinentCountries extends StatefulWidget {
  @override
  _ContinentCountriesState createState() => _ContinentCountriesState();
}

class _ContinentCountriesState extends State<ContinentCountries> {
  Future<List<dynamic>> futureCountries;
  String continent = controller.currentContinent;

  @override
  void initState() {
    super.initState();
    futureCountries = getCountriesByContinent(continent);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('InfoCountry App'),
        centerTitle: true,
      ),
      body: Center(
        child: FutureBuilder<List<dynamic>>(
          future: futureCountries,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return CountriesList(snapshot.data);
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }

            // By default, show a loading spinner.
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
