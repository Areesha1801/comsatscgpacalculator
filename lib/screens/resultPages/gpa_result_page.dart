import 'package:comsatscgpacalculator/mains/cgpa.dart';
import 'package:comsatscgpacalculator/mains/gpa.dart';
import 'package:comsatscgpacalculator/mains/sgpa.dart';
import 'package:flutter/material.dart';

import '../../home_page.dart';

class gpa_result_page extends StatelessWidget {
  const gpa_result_page({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text('GPA Result'),
        actions: [
          IconButton(
            icon: Image.asset('images/img2.png'),
            onPressed: () {},
          ),
        ],
      ),
      drawer: Row(
        children: [
          Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                const DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.teal,
                  ),
                  child: Text(
                    'Areesha Asif',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ),
                ListTile(
                  title: const Text("GPA"),
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => const gpa()));
                  },
                ),
                ListTile(
                  title: const Text("SGPA"),
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => const sgpa()));
                  },
                ),
                ListTile(
                  title: const Text("CGPA"),
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => const cgpa()));
                  },
                ),
                ListTile(
                  title: const Text("Home"),
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => const HomePage()));
                  },
                ),
              ],
            ),
          ),
        ],
      ),
      body: Column(),
    );
  }
}
