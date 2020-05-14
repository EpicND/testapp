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
      TBAGet instance = TBAGet();

    
      @override
  void initState(){
    // TODO: implement initState
    super.initState();
    

  }

  @override

  Widget build(BuildContext context) {
    String score = 'Loading data...';
    String text1;
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
          title: Text(
            'Scoultimate',
            style: TextStyle(fontSize: 43, color: Colors.yellow[700], fontFamily: 'Tomorrow'),
          ),
          centerTitle: false,
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
                    text1 = "$text";
                    
                  },
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Enter a team #'
                  ),
                ),
              FloatingActionButton(
                child: Icon(Icons.add),
              onPressed: () async {
                await instance.getData("$text1");
                score = instance.score;
                print(score);
                setState((){score = instance.score;});
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
