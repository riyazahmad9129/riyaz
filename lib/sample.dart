import 'package:flutter/material.dart';

class test3 extends StatefulWidget {
  const test3({super.key});

  @override
  _test3State createState() => _test3State();
}

class _test3State extends State<test3> {
  final _formKey = GlobalKey<FormState>();
  final _searchController = TextEditingController();

  get searchDestination => ["Apple"];

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search Destination'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _searchController,
                decoration: InputDecoration(
                  labelText: 'Search Destination',
                  hintText: 'Enter a destination',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.search),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a destination';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Process the search destination
                    String searchDestination = _searchController.text;
                    print('Search Destination: $searchDestination');
                    // Add your search functionality here
                  }
                },
                child: Text('Search'),
              ),
              Text('Search Destination: $searchDestination')

            ],
          ),
        ),
      ),
    );
  }
}