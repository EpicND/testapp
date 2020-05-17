import 'package:flutter/foundation.dart' as foundation;
import 'package:flutter/material.dart';
import 'package:frc_scouting_test/services/tba_get.dart';
import 'package:flutter/foundation.dart';
// import 'package:multiplatform/adaptive_widgets.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
      String _textString = 'Loading data...'; 
      String score;
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
    
    String text1;
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
          title: Text(
            'Scoultimate',
            style: TextStyle(fontSize: 43, color: Colors.yellow[700], fontFamily: 'Tomorrow'),
          ),
          centerTitle: false,
          backgroundColor: Colors.grey[900],
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
                setState((){score = instance.score;});
                // print(_textString);
                _doSomething();
              },
            ),
              Text(_textString),
              FlatButton(child: Icon(Icons.group, color: Colors.grey[200]), onPressed: (){Navigator.pushNamed(context, '/choose_event');},)
              // Image.asset('assets/bean.jpg'),
              ],
            ),
          ),
        ),
      ),
    );
  }
  void _doSomething() {
        // Using the callback State.setState() is the only way to get the build
        // method to rerun with the updated state value.
        setState(() {
          if(score == null) {
           _textString = "Enter a different number bimbo"; 
          } else { 
          _textString = score;
          }
        });
      }
  
}
