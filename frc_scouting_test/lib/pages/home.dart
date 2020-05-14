import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:frc_scouting_test/services/tba_get.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
      TBAGet instance = TBAGet(teamNumber: '2264');
      int counter = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text(
          'Scoultimate $counter',
          style: TextStyle(fontSize: 23, color: Colors.yellow[700]),
        ),
        centerTitle: true,
        backgroundColor: Colors.black87,
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            child: FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: () {
                setState(() async {
                  // counter ++;
                  await instance.getData();
                });
              },

            ),
          ),
        ),
      ),
    );
  }
}
