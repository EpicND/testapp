import 'package:http/http.dart';
import 'dart:convert';

class TBAGet {

String teamNumber;
String score;

String apiKey = 'mhsRwj3wHlnsMy2sYPRH3Y8VtIsFtg5vGIJ9MhZy8BqSCLVA6aR911q7unV1qDWd';

TBAGet({this.teamNumber});


Future <void> getData() async {

    try{
    Response response = await get('https://www.thebluealliance.com/api/v3/team/frc$teamNumber/event/2020mndu/matches/simple?X-TBA-Auth-Key=mhsRwj3wHlnsMy2sYPRH3Y8VtIsFtg5vGIJ9MhZy8BqSCLVA6aR911q7unV1qDWd');
    List data = jsonDecode(response.body);
    print(data);
  
      } catch (e){
        print('caught error $e');
      }




}


}