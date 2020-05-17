import 'package:flutter/material.dart';

class Android extends StatelessWidget {
  @override
   Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: Color(0xff121212),
        appBar: AppBar(
          backgroundColor: Color(0xff1f1f1f),
          actions: <Widget>[
          Image.asset('assets/logo2.png'),
          ],
       ),
        body: Container( 
          child: Padding(
            padding: EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 0.0),
            child: Row (
            children: <Widget> [ 
              Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget> [ 
                Text(
                '1816',
                style: TextStyle(
                  fontSize: 30, 
                  color: Colors.red,
                  fontFamily: 'Tomorrow',
                  letterSpacing: 1.0,
                  fontWeight: FontWeight.bold,
                   ),
                  ),
                Container( 
                  constraints: BoxConstraints(minWidth: 250, maxWidth: 250), 
                    child: Text(
                    'The Green Machine' ,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 45, 
                      color: Colors.white,
                      fontFamily: 'Tomorrow',
                      letterSpacing: 1.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
          
                ],
                ),
                Column (
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget> [
                    Divider(
                      height:30.0,
                    ),
                    Center ( 
                    child: CircleAvatar( 
                      radius: 39.0,
                      backgroundColor: Colors.green[200],
                      child: CircleAvatar(
                        radius:37.0,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage('assets/logo.png'),
                      ),
                    ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.grey[900],
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Container(height: 0.0),
              ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Container(height: 0.0),
              ),
            BottomNavigationBarItem(
              icon: Icon(Icons.library_books),
              title: Container(height: 0.0),
              ),
          ],
        ),
     );
   }
}

