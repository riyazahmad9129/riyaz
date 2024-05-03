import 'package:flutter/material.dart';

class Test2 extends StatefulWidget {
  const Test2({super.key});

  @override
  State<Test2> createState() => _Test2State();
}

class _Test2State extends State<Test2> {
  Map<String, dynamic> mapData = {};
  List<Map<String, dynamic>> dummyData = [
    {
      "name": {
        "common": "Moldova",
        "official": "Republic of Moldova",
        "nativeName": {
          "ron": {"official": "Republica Moldova", "common": "Moldova"}
        }
      },
      "flag": "🇲🇩",
      "continents": ["Europe"],
    },
    {
      "name": {
        "common": "United States",
        "official": "United States of America",
        "nativeName": {
          "eng": {
            "official": "United States of America",
            "common": "United States"
          }
        }
      },
      "flag": "🇺🇸",
      "continents": ["North America"],
    },
    {
      "name": {
        "common": "Russia",
        "official": "Russian Federation",
        "nativeName": {
          "rus": {"official": "Российская Федерация", "common": "Россия"}
        }
      },
      "flag": "🇷🇺",
      "continents": ["Europe", "Asia"],
    }
  ];
  String expanded = "";

  @override
  void initState() {
    super.initState();
    var continentList = [];
    for (Map<String, dynamic> data in dummyData) {
      var continents = data['continents'];
      if (!continentList.any((e) => continents.contains(e))) {
        continentList.addAll(continents);
      }
    }

    for (String data in continentList) {
      List<Map<String, dynamic>> d = dummyData
          .where((value) => value['continents'].contains(data))
          .toList();
      List<Map<String, dynamic>> countries = [];
      for (Map<String, dynamic> map in d) {
        countries.add({
          'country': map['name']['official'],
          'flag': map['flag'],
        });
      }
      mapData.addAll({data: countries});
    }
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.only(top: 8.0,right: 10,left: 10),
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
                          padding: const EdgeInsets.only(left: 10,top: 5),
                          child: Text(key,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
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
            ]
        ),
      ),
    );
  }
}
