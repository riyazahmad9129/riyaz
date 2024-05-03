import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Search extends SearchDelegate{

  List<String> data =["Hamza","Riyaz","Ansari","Ahmad", "Khan"];
  List<String> recent =["Hamza","Riyaz", "Khan"];

  @override
  List<Widget> buildActions(BuildContext context) {
  return <Widget>[IconButton(onPressed: () {

    query = "";
  }, icon: Icon(Icons.clear))];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(onPressed: () {
        Navigator.pop(context);
    }, icon: Icon(CupertinoIcons.back));
  }

  @override
  Widget buildResults(BuildContext context) {

    return ListTile(
      title: Text(query),
      onTap: () {

      },

    );


  }

  @override
  Widget buildSuggestions(BuildContext context) {
   return ListView.builder(
     itemCount: recent.length,
     itemBuilder: (context, index) {
     return ListTile(
       title: Text(recent[index]),

     );
   },);
  }
  
}