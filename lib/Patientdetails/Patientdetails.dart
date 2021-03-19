
import 'package:doc_app/search/search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class DataEntering extends StatefulWidget {
  @override
  _DataEnteringState createState() => _DataEnteringState();
}

class _DataEnteringState extends State<DataEntering> {
  List<String> _gender = [
    "Male","Female"
  ];
  String _selectedGender;
  @override
  DateTime  _dateTime;
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Card(color: Color(0xffC0C0E4),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 60),
              child: Column(
                children: [
                  Text(
                    'Add patient',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 34),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Patient Name",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      hoverColor: Colors.black,
                      focusColor: Colors.black,
                      hintText: "Enter your name",
                      labelStyle: TextStyle(fontSize: 20, color: Colors.black),
                      contentPadding: EdgeInsets.symmetric(horizontal: 10),
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.name,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Patient Contact No",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      hoverColor: Colors.black,
                      focusColor: Colors.black,
                      hintText: "Enter your Contact No",
                      labelStyle: TextStyle(fontSize: 20, color: Colors.black),
                      contentPadding: EdgeInsets.symmetric(horizontal: 10),
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Date Of Birth",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black
                  ),),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      Text(_dateTime == null ? 'Northing has been Picked yet' : _dateTime.toString()),
                      RaisedButton(
                        child: Text("pick a Date",style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                          color: Colors.black87
                        ),),
                        onPressed: (){
                          showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(1901),
                            lastDate: DateTime(2022),
                          ).then((date) {
                            setState(() {
                             _dateTime  = date;
                            });
                          } );
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Patient Email",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      hoverColor: Colors.black,
                      focusColor: Colors.black,
                      hintText: "Enter Email Id",
                      labelStyle: TextStyle(fontSize: 20, color: Colors.black),
                      contentPadding: EdgeInsets.symmetric(horizontal: 10),
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Gender",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: DropdownButton(
                          hint: Text(
                              'Select Gender'
                          ),
                          value: _selectedGender,
                          onChanged: (newValue){
                            setState(() {
                              _selectedGender = newValue;
                            });
                          },
                          items: _gender.map((gender) {
                            return DropdownMenuItem(child: new Text(gender),value: gender,);
                          }).toList()
                      ),
                    ),

                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Patient Address",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      hoverColor: Colors.black,
                      focusColor: Colors.black,
                      hintText: "Enter Patient Address",
                      labelStyle: TextStyle(fontSize: 20, color: Colors.black),
                      contentPadding:
                      EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.streetAddress,
                    minLines: 3,
                    maxLines: 5,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Patient Age",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      hoverColor: Colors.black,
                      focusColor: Colors.black,
                      hintText: "Enter Patient Age",
                      labelStyle: TextStyle(fontSize: 20, color: Colors.black),
                      contentPadding: EdgeInsets.symmetric(horizontal: 10),
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Medical History",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      hoverColor: Colors.black,
                      focusColor: Colors.black,
                      hintText: "Enter Patient Medical History (if any)",
                      labelStyle: TextStyle(fontSize: 20, color: Colors.black),
                      contentPadding:
                      EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.text,
                    minLines: 2,
                    maxLines: 6,
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      RaisedButton(color: Colors.grey,
                        child: Text("Skip",style: TextStyle(
                        fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20
                      ),),
                        onPressed: (){
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                         builder: (context)=>Search(),
    ));}
                       ),
                      SizedBox(
                        width: 170,
                      ),
                      RaisedButton(color: Colors.black12,
                          child: Text(
                            'Add',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 20),
                          ),
                          onPressed: () {}
                          )
                    ],
                  ),

                   ],
                 )
               ),
             ),
           )
         );
  }
}
