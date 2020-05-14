import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('FRC Scouting'),
        centerTitle: true,
        backgroundColor: Colors.black87,
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            child: FlatButton.icon(
              onPressed: () {},
              icon: Icon(Icons.add),
              label: Text('Add/Load Data'),
            ),
          ),
        ),
      ),
    );
  }
}
