import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class Android extends StatelessWidget {
  @override
   Widget build(BuildContext context) {
     return  Scaffold(
       backgroundColor: Color(0xff121212),
        appBar: AppBar(
          leading: Icon(Icons.menu,),
          backgroundColor: Color(0xff1f1f1f),
          // title: Text(
          //   'Scoultimate',
          //   style: TextStyle(fontSize: 35, color: Colors.yellow[700], fontFamily: 'Tomorrow'),
          // ),
          // centerTitle: true,
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
                Row(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                        height:110.0,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                            color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          width: 110.0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.offline_bolt, size:36),
                              SizedBox(height: 10.0,),
                              Text('2020'),
                              Text(
                                'Infinite',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey[700],
                                fontFamily: 'Tomorrow',
                                fontWeight: FontWeight.bold,
                              ),
                              ),
                              Text('Recharge',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey[700],
                                fontFamily: 'Tomorrow',
                                fontWeight: FontWeight.bold,
                              ),
                              ),
                            ],
                          ),
                        ),
                        ),
                      ],
                    ),
                    SizedBox(width: 10.0,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                        height:110.0,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                            color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          width: 110.0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(LineIcons.rocket, size:36),
                              SizedBox(height: 10.0,),
                              Text('2019'),
                              Text(
                                'Deep',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey[700],
                                fontFamily: 'Tomorrow',
                                fontWeight: FontWeight.bold,
                              ),
                              ),
                              Text('Space',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey[700],
                                fontFamily: 'Tomorrow',
                                fontWeight: FontWeight.bold,
                              ),
                              ),
                            ],
                          ),
                        ),
                        ),
                      ],
                    ),
                    SizedBox(width: 10.0,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                        height:110.0,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                            color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          width: 110.0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.battery_charging_full, size:36),
                              SizedBox(height: 10.0,),
                              Text('2018'),
                              Text(
                                'Power',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey[700],
                                fontFamily: 'Tomorrow',
                                fontWeight: FontWeight.bold,
                              ),
                              ),
                              Text('Up',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey[700],
                                fontFamily: 'Tomorrow',
                                fontWeight: FontWeight.bold,
                              ),
                              ),
                            ],
                          ),
                        ),
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
                        SizedBox(
                        height:110.0,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                            color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          width: 110.0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.settings, size:36),
                              SizedBox(height: 10.0,),
                              Text('2017'),
                              Text(
                                'Steamworks',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey[700],
                                fontFamily: 'Tomorrow',
                                fontWeight: FontWeight.bold,
                              ),
                              ),
                            ],
                          ),
                        ),
                        ),
                      ],
                    ),
                    SizedBox(width: 10.0,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                        height:110.0,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                            color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          width: 110.0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.flag, size:36),
                              SizedBox(height: 10.0,),
                              Text('2016'),
                              Text(
                                'FIRST',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey[700],
                                fontFamily: 'Tomorrow',
                                fontWeight: FontWeight.bold,
                              ),
                              ),
                              Text('Stronghold',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey[700],
                                fontFamily: 'Tomorrow',
                                fontWeight: FontWeight.bold,
                              ),
                              ),
                            ],
                          ),
                        ),
                        ),
                      ],
                    ),
                    SizedBox(width: 10.0,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                        height:110.0,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                            color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          width: 110.0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(LineIcons.recycle, size:36),
                              SizedBox(height: 10.0,),
                              Text('2015'),
                              Text(
                                'Recycle',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey[700],
                                fontFamily: 'Tomorrow',
                                fontWeight: FontWeight.bold,
                              ),
                              ),
                              Text('Rush',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey[700],
                                fontFamily: 'Tomorrow',
                                fontWeight: FontWeight.bold,
                              ),
                              ),
                            ],
                          ),
                        ),
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
                        SizedBox(
                        height:110.0,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                            color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          width: 110.0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(LineIcons.plane, size:36),
                              SizedBox(height: 10.0,),
                              Text('2014'),
                              Text(
                                'Aerial',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey[700],
                                fontFamily: 'Tomorrow',
                                fontWeight: FontWeight.bold,
                              ),
                              ),
                              Text(
                                'Assist',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey[700],
                                fontFamily: 'Tomorrow',
                                fontWeight: FontWeight.bold,
                              ),
                              ),
                            ],
                          ),
                        ),
                        ),
                      ],
                    ),
                    SizedBox(width: 10.0,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                        height:110.0,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                            color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          width: 110.0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.flag, size:36),
                              SizedBox(height: 10.0,),
                              Text('2016'),
                              Text(
                                'FIRST',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey[700],
                                fontFamily: 'Tomorrow',
                                fontWeight: FontWeight.bold,
                              ),
                              ),
                              Text('Stronghold',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey[700],
                                fontFamily: 'Tomorrow',
                                fontWeight: FontWeight.bold,
                              ),
                              ),
                            ],
                          ),
                        ),
                        ),
                      ],
                    ),
                    SizedBox(width: 10.0,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                        height:110.0,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                            color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          width: 110.0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(LineIcons.recycle, size:36),
                              SizedBox(height: 10.0,),
                              Text('2015'),
                              Text(
                                'Recycle',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey[700],
                                fontFamily: 'Tomorrow',
                                fontWeight: FontWeight.bold,
                              ),
                              ),
                              Text('Rush',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey[700],
                                fontFamily: 'Tomorrow',
                                fontWeight: FontWeight.bold,
                              ),
                              ),
                            ],
                          ),
                        ),
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
