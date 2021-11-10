import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text('Comsats CGPA Calculator'),
        actions: [
          IconButton(
            icon: Image.asset('images/img2.png'),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(),
    );
  }
}
