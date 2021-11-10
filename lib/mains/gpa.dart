import 'package:comsatscgpacalculator/mains/sgpa.dart';
import 'package:comsatscgpacalculator/screens/gpa_input_page.dart';
import 'package:flutter/material.dart';

class gpa extends StatelessWidget {
  const gpa({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: const Color(0xFF0A0E21),
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
      ),
      home: const GpaAppPage(),
    );
  }
}
