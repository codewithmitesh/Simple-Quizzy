//  ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class question extends StatelessWidget {
  // const question({Key? key}) : super(key: key);

//Propeties of Classes
  final String Currquestion;

  question(this.Currquestion);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(25),
      // margin: EdgeInsets.all(15),
      // padding: EdgeInsets.all(45),
      child: Text(
        Currquestion,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
