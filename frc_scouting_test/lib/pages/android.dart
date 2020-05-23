import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:frc_scouting_test/widgets/builder.dart';
import 'package:frc_scouting_test/services/get_team_info.dart';


class Android extends StatefulWidget {
  @override
  _Android createState() => _Android();
}

class _Android extends State<Android> {
  Future<void> testDataBS()async{
    await GetTeamInfo.getTestData();
    var _response = await GetTeamInfo.readTestDataFromStorage();
    var realResponse = _response[0];
    print('response is ${realResponse['years_participated']}');

  }
  @override
  void initState(){
    // TODO: implement initState
    super.initState();
    testDataBS();
  }
  @override
   Widget build(BuildContext context) {
     
     return  Scaffold(
       backgroundColor: Color(0xff121212),
        appBar: AppBar(
          leading: Icon(Icons.menu,),
          backgroundColor: Color(0xff1f1f1f),
          actions: <Widget>[
          Image.asset('assets/logo2.png'),
          ],
       ),
        body: Container(
          child: Padding(
            padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0),
            child: Column (
              children: <Widget> [
                Row (
                  children: <Widget> [
                    Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget> [
                      SizedBox(height: 10.0,),
                      Text(
                      '1816',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.red,
                        fontFamily: 'Tomorrow',
                        letterSpacing: 3.5,
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
                      Container(
                        constraints: BoxConstraints(minWidth: 250, maxWidth: 250),
                          child: Text(
                          'Edina, Minnesota' ,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 16.5,
                            color: Colors.grey[400],
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
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget> [
                          RichText(
                            text: TextSpan(
                              style: TextStyle(
                              fontSize: 10,
                              color: Colors.white,
                              fontFamily: 'Tomorrow',
                              letterSpacing: 1.0,
                              fontWeight: FontWeight.bold,
                            ),
                              children: <TextSpan>[
                                TextSpan(text: '55 '),
                                TextSpan(text: 'Awards', style: TextStyle(color: Colors.grey[400])),
                              ],
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              style: TextStyle(
                              fontSize: 10,
                              color: Colors.white,
                              fontFamily: 'Tomorrow',
                              letterSpacing: 1.0,
                              fontWeight: FontWeight.bold,
                            ),
                              children: <TextSpan>[
                                TextSpan(text: '14 '),
                                TextSpan(text: 'Years', style: TextStyle(color: Colors.grey[400])),
                              ],
                            ),
                          ),
                          SizedBox(height: 20.0,),
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
                Divider(
                  color: Colors.white
                ),
                RowBuilder(
                  yearArr: [2020, 2019, 2018],
                ),
                SizedBox(height: 10.0,),
                Row(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        YearBuilder(
                          year: 2017,
                         ),
                      ],
                    ),
                    SizedBox(width: 10.0,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        YearBuilder(
                          year: 2016,
                         ),
                      ],
                    ),
                    SizedBox(width: 10.0,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        YearBuilder(
                          year: 2015,
                         ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10.0,),
                Row(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        YearBuilder(
                          year: 2014,
                         ),
                      ],
                    ),
                    SizedBox(width: 10.0,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        YearBuilder(
                          year: 2013,
                         ),
                      ],
                    ),
                    SizedBox(width: 10.0,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        YearBuilder(
                          year: 2012,
                         ),
                      ],
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
