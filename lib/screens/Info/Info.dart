import 'package:appFlutter/Objects/country.dart';
import 'package:appFlutter/controller/controller.dart' as controller;
import 'package:appFlutter/screens/Info/dataRow.dart';
import 'package:appFlutter/util/flag.dart';
import 'package:appFlutter/services/api.dart';
import 'package:flutter/material.dart';

class Info extends StatefulWidget {
  @override
  _InfoState createState() => _InfoState();
}

class _InfoState extends State<Info> {
  String countryName;

  @override
  void initState() {
    super.initState();
    countryName = controller.currentCountry;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('InfoCountry App'),
        centerTitle: true,
      ),
      body: Center(
        child: FutureBuilder<Country>(
          future: getCountry(context, countryName),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Container(
                  height: 500,
                  width: 400,
                  padding: EdgeInsets.all(18.0),
                  decoration: BoxDecoration(
                    color: Color(0xFF181b3a),
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flag(snapshot.data.code, 0.4),
                      TextRow('Name:', snapshot.data.name),
                      TextRow('Capital:', snapshot.data.capital),
                      TextRow('Continent:', snapshot.data.continent),
                      TextRow('Population:', snapshot.data.population),
                      TextRow('Language:', snapshot.data.language),
                      TextRow('Currency:', snapshot.data.currency)
                    ],
                  ));
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
