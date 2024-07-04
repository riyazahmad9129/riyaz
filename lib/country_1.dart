import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'country_2.dart';


class Country1 extends StatefulWidget {
  const Country1({super.key});

  @override
  State<Country1> createState() => _Country1State();
}

class _Country1State extends State<Country1> {
  Map<String, dynamic> mapData = {};
  String expanded = "";

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    final response = await http.get(
      Uri.parse('https://restcountries.com/v3.1/all'),
    );

    if (response.statusCode == 200) {
      List<dynamic> dummyData = jsonDecode(response.body);
      var continentList = [];
      for (Map<String, dynamic> data in dummyData) {
        var continents = data['continents'];
        if (!continentList.any(
              (e) => continents.contains(e),
        )) {
          continentList.addAll(continents);
        }
      }

      for (String data in continentList) {
        List d = dummyData
            .where(
              (value) => value['continents'].contains(data),
        )
            .toList();
        List<Map<String, dynamic>> countries = [];
        for (Map<String, dynamic> map in d) {
          countries.add(
            {
              'country': map['name']['official'],
              'flag': map['flag'],
            },
          );
        }
        mapData.addAll({data: countries});
      }
      setState(() {});
    } else {
      throw Exception('Failed to load data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.only(top: 8.0, right: 10, left: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ExpansionPanelList(
                materialGapSize: 5,
                elevation: 2,
                expansionCallback: (i, b) {
                  setState(() {
                    expanded = b ? mapData.keys.toList()[i] : "";
                  });
                },
                children: mapData.keys.map(
                      (e) {
                    var key = e;
                    var countries = mapData[key];

                    return ExpansionPanel(
                      isExpanded: key == expanded,
                      headerBuilder: (_, expanded) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CountryListScreen(
                                  continent: key,
                                  countries: countries,
                                ),
                              ),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10, top: 5),
                            child: Text(
                              key,
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        );
                      },
                      body: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 5,
                          vertical: 8,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: countries.map<Widget>(
                                (country) {
                              return Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 5,
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      country['flag'],
                                      style: const TextStyle(fontSize: 20),
                                    ),
                                    const SizedBox(width: 8),
                                    Text(country['country']),
                                  ],
                                ),
                              );
                            },
                          ).toList(),
                        ),
                      ),
                    );
                  },
                ).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
