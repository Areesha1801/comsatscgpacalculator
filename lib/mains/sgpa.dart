import 'package:comsatscgpacalculator/screens/sgpa_input_page.dart';
import 'package:flutter/material.dart';

import 'cgpa.dart';
import 'gpa.dart';
import '../home_page.dart';

class sgpa extends StatelessWidget {
  const sgpa({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: const Color(0xFF0A0E21),
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
      ),
      home: const SGPAAppPage(),
    );
  }
}
