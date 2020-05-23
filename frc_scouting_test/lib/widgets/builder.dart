
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:flutter_icons/flutter_icons.dart';

final List<IconData> icons = [Icons.offline_bolt, MaterialCommunityIcons.rocket, Icons.battery_charging_full, MaterialCommunityIcons.cogs, MaterialCommunityIcons.castle, LineIcons.recycle,
MaterialCommunityIcons.shield_airplane_outline, MaterialCommunityIcons.airplane_takeoff, MaterialCommunityIcons.basketball];

final List<String>  yearCatalouge = ["Infinite", "Recharge", "Deep", "Space", "Power", "Up", "Steamworks", " ", "FIRST", "Stronghold", "Recycle", "Rush", "Aerial", "Assist",
"Ultimate", "Ascent", "Rebound", "Rumble", "Logo", "Motion", "Breakaway", " ", "Lunacy", " ", "Overdrive", " ", "Rack \"N\" Roll", " ", "Aim", "High", 
"Triple", "Play", "FIRST", "Frenzy", "Stack", "Attack", "Zone", "Zeal"];
final List<int>  years = [2020, 2019, 2018, 2017, 2016, 2015, 2014, 2013, 2012, 2011, 2010, 2009, 2008, 2007, 2006, 2005, 2004, 2003, 2002];
int year;

class YearBuilder extends StatelessWidget {
      final int year;
      

      YearBuilder({this.year});
      
      @override
      Widget build(BuildContext context) {
        final int index = 2020- year;
        final String text1 = yearCatalouge[index*2];
        final String text2 = yearCatalouge[index*2+1];
        final IconData icon = icons[index];

        // Scaffold is a layout for the major Material Components.
        return SizedBox(
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
                Icon(icon, size:36),
                SizedBox(height: 10.0,),
                Text('$year',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[700],
                ),
                ),
                Text(
                  '$text1',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey[700],
                  fontFamily: 'Tomorrow',
                  fontWeight: FontWeight.bold,
                ),
                ),
                Text('$text2',
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
        );
      }
    }



class EventBuilder extends StatelessWidget {
  final List<int> yearArr;
      

      EventBuilder({this.yearArr});
      
      @override
      Widget build(BuildContext context) {
        final int length = yearArr.length;
        final int ph = length%3;
        final int tot = ph+length;
        final double rowRep = tot/3;

      }
}

class RowBuilder extends StatelessWidget {
    final List<int> yearArr;
      

      RowBuilder({this.yearArr});
      
      @override
      Widget build(BuildContext context) {
        final int length = yearArr.length;
  

        return Row(
                  children: <Widget>[
                    for(int x = 0; x< length; x++) 

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        YearBuilder(
                          year: yearArr[x],
                         ),
                      ],
                    ),
                    SizedBox(width: 30.0,),
                  ],
        );

      }
}


class Builders extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return RowBuilder(
      yearArr: [2019, 2020, 2018],
    );
  }
  }