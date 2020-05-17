import 'dart:convert';
import 'package:path_provider/path_provider.dart' as paths;
import 'package:flutter/material.dart';
import 'package:frc_scouting_test/services/event_service.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  TextEditingController editingController = TextEditingController();

  var duplicateItems = List<String>();
  var duplicateItems1 = List<String>();
  var items = List<String>();
  EventService eventService = EventService();

  var numberList = List<String>();
  var teamNameList = List<String>();

  bool isLoading;

  Future<void> getList() async {
    await eventService.updateTeams();
    List<Map> objects = eventService.teamNumList;
    String addition;
    objects.forEach((element) {
      // print(element["teamNumber"]);
      numberList.add(element["teamNumber"].toString());
      teamNameList.add(element['name']);
      duplicateItems1.add(element["teamNumber"].toString() + " - " + element['name'] + " - " + element['state'].toString() + " - " + element['city'].toString());
    });
    duplicateItems.addAll(numberList);
    setState(() {
      items.addAll(duplicateItems);
      isLoading = false;
    });
  }

  // @override
  void filterSearch(String query) {
    List<String> dummySearchList = List<String>();
    dummySearchList.addAll(duplicateItems1);
    if (query.isNotEmpty) {
      List<String> dummyListData = List<String>();
      dummySearchList.forEach((element) {
        if (element.toLowerCase().contains(query.toLowerCase())) {
          dummyListData.add(numberList[dummySearchList.indexOf(element)]);
        }
      });

      setState(() {
        items.clear();
        items.addAll(dummyListData);
      });
      return;
    } else {
      setState(() {
        items.clear();
        items.addAll(duplicateItems);

      });
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // items.addAll(duplicateItems);
    getList();
    isLoading = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Teams'),
      ),

      body: Container(
        child: Column(
          children: <Widget>[
            isLoading ? LinearProgressIndicator() : Container(),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                onChanged: (value) {
                  filterSearch(value);
                },
                controller: editingController,
                decoration: InputDecoration(
                  labelText: "Search",
                  hintText: "Search teams",
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                    Radius.circular(25),
                  )),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                // shrinkWrap: true,
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return Center(
                    child: Card(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          ListTile(
                              leading: Text(
                                '${items[index]}',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              title: Text(
                                  '${teamNameList[duplicateItems.indexOf(items[index])]}')),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }


  

}
