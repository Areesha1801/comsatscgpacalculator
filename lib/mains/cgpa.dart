import 'package:comsatscgpacalculator/screens/cgpa_input_page.dart';
import 'package:flutter/material.dart';
import 'gpa.dart';
import '../home_page.dart';
import 'sgpa.dart';

class cgpa extends StatelessWidget {
  const cgpa({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: const Color(0xFF0A0E21),
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
      ),
      home: const CGPAAppPage(),
    );
  }
}
