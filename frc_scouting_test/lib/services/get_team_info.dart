import 'dart:io';

import 'package:http/http.dart';
import 'dart:convert';
import 'package:path_provider/path_provider.dart' as paths;

class GetTeamInfo {

  static Future<void> getTestData() async {
    int i;

    try{
    Response responseTest = await get(
        'https://www.thebluealliance.com/api/v3/team/frc1816?X-TBA-Auth-Key=mhsRwj3wHlnsMy2sYPRH3Y8VtIsFtg5vGIJ9MhZy8BqSCLVA6aR911q7unV1qDWd');
      // print(responseTest.body);
      Response responseTest2 = await get(
        'https://www.thebluealliance.com/api/v3/team/frc1816/years_participated?X-TBA-Auth-Key=mhsRwj3wHlnsMy2sYPRH3Y8VtIsFtg5vGIJ9MhZy8BqSCLVA6aR911q7unV1qDWd');
    
    Response responseTest4 = await get(
        'https://www.thebluealliance.com/api/v3/team/frc1816/awards?X-TBA-Auth-Key=mhsRwj3wHlnsMy2sYPRH3Y8VtIsFtg5vGIJ9MhZy8BqSCLVA6aR911q7unV1qDWd');
    
    Map responseTest1 = await json.decode(responseTest.body);
    List responseTest3 = await json.decode(responseTest2.body);
    List responseTest5 = await json.decode(responseTest4.body);
    print(responseTest5);
    for(i=0; i < responseTest5.length; i++){

    }
  // print(responseTest1);
    final dir = await paths.getApplicationDocumentsDirectory();
    List<dynamic> testData = List<Map>();
    testData.add({
      // 'nickname': responseTest1['nickname'],
      "key": responseTest1['key'].toString(),
      "team_number": responseTest1['team_number'].toString(),
      "nickname": responseTest1['nickname'].toString(),
      "name": responseTest1['name'].toString(),
      "school_name": responseTest1['school_name'].toString(),
      "city": responseTest1['city'].toString(),
      "state_prov": responseTest1['state_prov'].toString(),
      "country": responseTest1['country'].toString(),
      "address": responseTest1['address'].toString(),
      "postal_code": responseTest1['postal_code'].toString(),
      "website": responseTest1['website'].toString(),
      "rookie_year": responseTest1['rookie_year'].toString(),
      "years_participated": responseTest3.toString(),
      "awards_count": (responseTest5.length).toString(),
      'awards_list': responseTest5,
      // "motto": responseTest1[],
    });
    final file = File('${dir.path}/test_data.json');

    return file.writeAsString(
      json.encode(testData)
    );
    } catch (e) {
      print(e);
    }
  }

  static Future<List<dynamic>> readTestDataFromStorage() async {
    final dir = await paths.getApplicationDocumentsDirectory();
    final file = File('${dir.path}/test_data.json');

    if (await file.exists()) {
      final JsonStr = await file.readAsString();
      final decoded = json.decode(JsonStr).toList();
      // final List<Map> _storedList = List<Map>();
      // decoded.forEach((index){
      //   _storedList.add(decoded[index]);
      // });
      print(decoded[0]['nickname']);
      // print(teamNum)
      // return decoded.map<Map>((x) => Map.fromJson());
      // teamNumList.clear();
      // teamNumList = teamNumList + decoded;
      // print(teamNumList);
      // print('${decoded[0]["name"]}');
      return decoded;
    } else {
      return <Map>[];
    }
  }


}