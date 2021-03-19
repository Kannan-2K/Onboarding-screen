import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class PatientDetail{
  final String name;
  // ignore: non_constant_identifier_names
  final String Category;
  PatientDetail({
    this.name,
    // ignore: non_constant_identifier_names
    this.Category,
});
}

// ignore: missing_return
List<PatientDetail>loadPatientDetails(){
  var name;



  return <PatientDetail>[PatientDetail(
    name: "Jaffrin",
    Category: "Patient Name",
  ),
  PatientDetail(
    name: "Kannan",
    Category: "Patient Date Of Birth",
  ),
  PatientDetail(
    name: "Joe",
    Category: "Patient Age",
  ),
  PatientDetail(
    name: "Gk",
    Category: "Patient Contact No",
  ),];
}