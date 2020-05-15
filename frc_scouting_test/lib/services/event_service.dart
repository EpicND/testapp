import 'package:http/http.dart';
import 'dart:convert';

class EventService {

String teamNumber;
String score;
var teamNumArr = []; 

String apiKey = 'mhsRwj3wHlnsMy2sYPRH3Y8VtIsFtg5vGIJ9MhZy8BqSCLVA6aR911q7unV1qDWd';

EventService();

Future getData(curNum) async {

    try{
    Response response = await get('https://www.thebluealliance.com/api/v3/teams/$curNum/simple?X-TBA-Auth-Key=mhsRwj3wHlnsMy2sYPRH3Y8VtIsFtg5vGIJ9MhZy8BqSCLVA6aR911q7unV1qDWd');
    List data = jsonDecode(response.body);
    
    for(int x = 0; x<data.length; x++) {
        if(data[x]['team_number'] == null) {

        } else { 
        teamNumArr.add(data[x]['team_number']);
        }
    }
    print(teamNumArr);

      } catch (e){
        print('caught error $e');
      }




}

}

void updateTeams() { 
EventService teamRequest = EventService();
for(int n=1; n<10; n++) { 
teamRequest.getData(n);
}

}
