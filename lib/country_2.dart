import 'package:flutter/material.dart';

class CountryListScreen extends StatelessWidget {
  final String continent;
  final List<Map<String, dynamic>> countries;

   CountryListScreen({
    required this.continent,
    required this.countries,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(continent),
      ),
      body: ListView.builder(
        itemCount: countries.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Text(
              countries[index]['flag'],
              style: const TextStyle(fontSize: 20),
            ),
            title: Text(countries[index]['country']),
          );
        },
      ),
    );
  }
}
