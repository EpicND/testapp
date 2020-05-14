import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:frc_scouting_test/services/tba_get.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

      int counter = 0;
      String teamNumber;
      String score = 'Loading data...';


    void setupScoreGet() async {
          TBAGet instance = TBAGet();
    await instance.getData('2264');
    setState((){score = instance.score;});
    }
      @override
  void initState(){
    // TODO: implement initState
    super.initState();
    setupScoreGet();

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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  onChanged: (text) {
                    print("First text field: $text");
                  },
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Enter a team #'
                  ),
                ),
              FloatingActionButton(
                child: Icon(Icons.add),
              onPressed: () {
                setState((){
                  // counter++;
                  // String score = await instance.getData();

                  // score = instance.score;
                });
              },

            ),
              Text('$score')
              // Image.asset('assets/bean.jpg'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
