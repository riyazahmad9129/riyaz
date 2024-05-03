import 'package:flutter/material.dart';

class DateC extends StatefulWidget {
  final String searchValue;
  final TextEditingController _searchController;

  DateC({required this.searchValue})
      : _searchController = TextEditingController(text: searchValue);
  @override
  State<DateC> createState() => _DateCState();
}

class _DateCState extends State<DateC> {
  DateTime? selectedDate;

  get _searchController => null;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),  // Use current date as initial date
      firstDate: DateTime(2024, 5),
      lastDate: DateTime(2025),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Date Picker Example"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                _selectDate(context);
              },
              child: Container(
                width: 305,
                height: 48,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: const Color(0xFFe0edf6),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  selectedDate == null
                      ? "Select a date"
                      : "${selectedDate!.toLocal()}".split(' ')[0],
                  style: TextStyle(
                    color: selectedDate == null ? Colors.grey : Colors.black,
                  ),
                ),
              ),

            ),
            TextField(
              controller: _searchController,
              decoration: InputDecoration(
                labelText: 'Search',
                border: OutlineInputBorder(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
