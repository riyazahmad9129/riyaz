import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
class MyApi extends StatefulWidget {
  const MyApi({super.key});

  @override
  State<MyApi> createState() => _MyApiState();
}

class _MyApiState extends State<MyApi> {
  Map<String, dynamic> mapData = {};
  String expanded = "";
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    getData();
  }

  Future<void> getData() async {
    final response = await http.get(Uri.parse('https://restcountries.com/v3.1/all')); // Replace with your API URL
    if (response.statusCode == 200) {
      List<dynamic> data = json.decode(response.body);
      processResponse(data);
    } else {
      throw Exception('Failed to load data');
    }
  }

  void processResponse(List<dynamic> data) {
    var continentList = [];
    for (Map<String, dynamic> item in data) {
      var continents = item['continents'];
      if (!continentList.any((e) => continents.contains(e))) {
        continentList.addAll(continents);
      }
    }

    for (String continent in continentList) {
      List<dynamic> continentCountries = data
          .where((value) => value['continents'].contains(continent))
          .toList();
      List<Map<String, dynamic>> countries = [];
      for (Map<String, dynamic> map in continentCountries) {
        countries.add({
          'country': map['name']['official'],
          'flag': map['flag'],
        });
      }
      mapData[continent] = countries;
    }
    setState(() {
      isLoading = false;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : Padding(
        padding: const EdgeInsets.only(top: 8.0,  left: 5),
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
                        return Padding(
                          padding: const EdgeInsets.only(left: 10, top: 5),
                          child: Text(
                            key,
                            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                        );
                      },
                      body: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: countries.map<Widget>(
                                (country) {
                              return Padding(
                                padding: const EdgeInsets.symmetric(vertical: 4),
                                child: Row(
                                  children: [
                                    Text(country['flag'], style: const TextStyle(fontSize: 20)),
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