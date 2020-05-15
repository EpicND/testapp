import 'package:http/http.dart';
import 'dart:convert';

class EventService {

String teamNumber;
String score;
var teamNumArr = []; 
List<Map> teamNumList = List<Map>();

String apiKey = 'mhsRwj3wHlnsMy2sYPRH3Y8VtIsFtg5vGIJ9MhZy8BqSCLVA6aR911q7unV1qDWd';

EventService();

Future <void> getData(curNum) async {

    try{
    Response response = await get('https://www.thebluealliance.com/api/v3/teams/$curNum/simple?X-TBA-Auth-Key=mhsRwj3wHlnsMy2sYPRH3Y8VtIsFtg5vGIJ9MhZy8BqSCLVA6aR911q7unV1qDWd');
    List data = jsonDecode(response.body);
    
    for(int x = 0; x<data.length; x++) {
        if(data[x]['team_number'] == null) {

        } else { 
        teamNumArr.add(data[x]['team_number']);
        teamNumList.add({
          'teamNumber': data[x]['team_number'],
          'name': data[x]['nickname'],
          'city': data[x]['city'],
          'state': data[x]['state_prov'],
          'country': data[x]['country'],
        });
        
        }
    }
    // print(teamNumList);

      } catch (e){
        print('caught error $e');
      }




}

Future <void> updateTeams() async { 
EventService teamRequest = EventService();
for(int n=1; n<10; n++) { 
await teamRequest.getData(n.toString());
}
print(teamNumArr);
}


}


