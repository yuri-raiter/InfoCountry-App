import 'package:appFlutter/screens/AllCountries/countriesList.dart';
import 'package:appFlutter/services/api.dart';
import 'package:flutter/material.dart';

class AllCountries extends StatefulWidget {
  @override
  _AllCountriesState createState() => _AllCountriesState();
}

class _AllCountriesState extends State<AllCountries> {
  Future<List<dynamic>> futureCountries;

  @override
  void initState() {
    super.initState();
    futureCountries = getAllCountries();
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
