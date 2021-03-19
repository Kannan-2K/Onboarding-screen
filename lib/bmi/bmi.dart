import 'package:doc_app/Patientdetails/Patientdetails.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xffC0C0E4),
      ),
      home: MyApp1(),
    ));

class MyApp1 extends StatefulWidget {
  @override
  _MyAppState1 createState() => _MyAppState1();
}

class _MyAppState1 extends State<MyApp1> {
  double _height = 170.0;
  double _weight = 75.0;
  int _bmi = 0;
  String _condition = 'Select Data';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: size.height * 0.40,
              width: double.infinity,
              decoration: new BoxDecoration(color: Color(0xffC0C0E4)),
              padding: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "BMI",
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 60,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Calculator",
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 60,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Container(
                      child: Text(
                        "$_bmi",
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 45,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                        text: "Condition : ",
                        style: TextStyle(color: Colors.black45, fontSize: 24.0),
                        children: <TextSpan>[
                          TextSpan(
                            text: "$_condition",
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold),
                          )
                        ]),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              width: double.infinity,
              child: Column(
                children: <Widget>[
                  SizedBox(height: size.height * 0.03),
                  Text(
                    "Choose data",
                    style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                        fontSize: 35),
                  ),
                  SizedBox(height: size.height * 0.03),
                  RichText(
                    text: TextSpan(
                        text: "Height : ",
                        style:
                            TextStyle(color: Color(0xFF403f3d), fontSize: 24.0),
                        children: <TextSpan>[
                          TextSpan(
                            text: "$_height cm",
                            style: TextStyle(
                                color: Color(0xFF403f3d),
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold),
                          )
                        ]),
                  ),
                  SizedBox(height: size.height * 0.03),
                  Slider(
                    value: _height,
                    min: 0,
                    max: 350,
                    onChanged: (height) {
                      setState(() {
                        _height = height;
                      });
                    },
                    divisions: 350,
                    label: "$_height",
                    activeColor: Color(0xFF403f3d),
                    inactiveColor: Colors.grey,
                  ),
                  SizedBox(height: size.height * 0.03),
                  RichText(
                    text: TextSpan(
                        text: "Weight : ",
                        style:
                            TextStyle(color: Color(0xFF403f3d), fontSize: 24.0),
                        children: <TextSpan>[
                          TextSpan(
                            text: " $_weight kg",
                            style: TextStyle(
                                color: Color(0xFF403f3d),
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold),
                          )
                        ]),
                  ),
                  SizedBox(height: size.height * 0.03),
                  SizedBox(height: size.height * 0.03),
                  Slider(
                    value: _weight,
                    min: 0,
                    max: 350,
                    onChanged: (weight) {
                      setState(() {
                        _weight = weight;
                      });
                    },
                    divisions: 350,
                    label: "$_weight",
                    activeColor: Color(0xFF403f3d),
                    inactiveColor: Colors.grey,
                  ),
                ],
              ),
            ),
            Container(
              width: size.width * 0.9,
              height: size.height * 0.1,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      _bmi = (_weight / ((_height / 100) * (_height / 100)))
                          .round()
                          .toInt();
                      if (_bmi >= 18.5 && _bmi <= 25) {
                        _condition = "Normal";
                      } else if (_bmi >= 25 && _bmi <= 30) {
                        _condition = "Over Weight";
                      } else if (_bmi >= 30) {
                        _condition = "Obesity";
                      } else {
                        _condition = "Under Weight";
                      }
                    });
                  },
                  child: Text(
                    "Calculate",
                    style: TextStyle(color: Colors.black87, fontSize: 20),
                  ),
                  color: Color(0xffC0C0E4),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              children: [
                Container(
                  child: RaisedButton(
                    color: Color(0xffC0C0E4),
                    child: Text(
                      "Next",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => DataEntering(),
                      ));
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
