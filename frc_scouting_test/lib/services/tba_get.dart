import 'package:http/http.dart';
import 'dart:convert';

class TBAGet {

String teamNumber;
String score;

String apiKey = 'mhsRwj3wHlnsMy2sYPRH3Y8VtIsFtg5vGIJ9MhZy8BqSCLVA6aR911q7unV1qDWd';

TBAGet();


Future <void> getData(teamNum) async {

    try{
    Response response = await get('https://www.thebluealliance.com/api/v3/team/frc$teamNum/event/2020mndu/matches/simple?X-TBA-Auth-Key=mhsRwj3wHlnsMy2sYPRH3Y8VtIsFtg5vGIJ9MhZy8BqSCLVA6aR911q7unV1qDWd');
    List data = jsonDecode(response.body);
    print(data[1]['alliances']['red']['score']);
    score = data[1]['alliances']['red']['score'].toString();
  
      } catch (e){
        print('caught error $e');
      }




}


}