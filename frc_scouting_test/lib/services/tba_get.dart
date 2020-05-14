import 'package:http/http.dart';
import 'dart:convert';

class TBAGet {

String teamNumber;
String score;

TBAGet({this.teamNumber});


Future <void> getData() async {

    try{
    Response response = await get('');
    Map data = jsonDecode(response.body);

  
      } catch (e){
        print('caught error $e');
      }




}


}