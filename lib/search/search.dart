import 'package:doc_app/search/data.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Search());
}

class Search extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: MyHomePage(),
        debugShowCheckedModeBanner: false
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color(0xffC0C0E4),
        title: Text("Search"),
        actions: <Widget>[
          IconButton(icon:Icon(Icons.search), onPressed: (){
            showSearch(context:context,delegate:PatientDetailsSearch());
          })
        ],
      ),
    );
  }
}

class PatientDetailsSearch extends SearchDelegate<PatientDetail>{

  @override
  List<Widget> buildActions(BuildContext context) {
    return[IconButton(icon: Icon(Icons.clear), onPressed: (){})];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(icon: Icon(Icons.arrow_back), onPressed: (){});
  }

  @override
  Widget buildResults(BuildContext context) {
    return null;
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final mylist = loadPatientDetails();
    return ListView.builder(
        itemCount: mylist.length,
        itemBuilder: (context,index){
          final PatientDetail listitem = mylist[index];
          return ListTile(title: Text(listitem.name),);
        });
  }
  
}