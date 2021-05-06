import 'package:flutter/material.dart';

class ListViewExample extends StatelessWidget {

  List<Student> allStudents = [];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) => Text("eleman $index"),
    );
  }

  void bringStudentData(){

    allStudents = List.generate(300, (index) => Student("Student $index name", "Student $index description", index % 2 == 0 ? true : false));

  }


}


class Student {

  String _name;
  String _description;
  bool _gender;

  Student(this._name, this._description, this._gender);
}
