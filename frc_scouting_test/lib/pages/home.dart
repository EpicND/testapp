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
      String score;
      @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }

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
          actions: <Widget>[
          Image.asset('assets/logo2.png'),
          ],
       ),
      body: SafeArea(
        child: Center(
          child: Container (
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              FloatingActionButton(
                child: Icon(Icons.add),
              onPressed: () {
                setState((){
                  // counter++;
                  // String score = await instance.getData();
                  instance.getData();
                  score = instance.score;
                });
              },

            ),
              Image.asset('assets/bean.jpg'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
