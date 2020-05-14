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
        title: Text(
          'Scoultimate',
          style: TextStyle(fontSize: 23, color: Colors.yellow[700]),
        ),
        centerTitle: true,
        backgroundColor: Colors.black87,
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            child: FlatButton.icon(
              onPressed: () {},
              icon: Icon(Icons.add, color: Colors.grey[600],),
              label: Text(
                'Add/Load Data',
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
