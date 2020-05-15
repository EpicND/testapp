import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:frc_scouting_test/services/event_service.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  TextEditingController editingController = TextEditingController();

  var duplicateItems = List<String>();
  var items = List<String>();
  EventService eventService = EventService();

  var numberList = List<String>();
  var teamNameList = List<String>();

  Future<void> getList() async {
    await eventService.updateTeams();
    List<Map> objects = eventService.teamNumList;
    String addition;
    objects.forEach((element) {
      // print(element["teamNumber"]);
      numberList.add(element["teamNumber"].toString());
      teamNameList.add(element['name']);
    });
    duplicateItems.addAll(numberList);
    setState(() {
      items.addAll(duplicateItems);
    });
  }

  // @override
  void filterSearch(String query) {
    List<String> dummySearchList = List<String>();
    dummySearchList.addAll(duplicateItems);
    if (query.isNotEmpty) {
      List<String> dummyListData = List<String>();
      dummySearchList.forEach((element) {
        if (element.toLowerCase().contains(query.toLowerCase())) {
          dummyListData.add(element);
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
    items.addAll(duplicateItems);
    getList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Teams')),
      body: Container(
        child: Column(
          children: <Widget>[
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
                shrinkWrap: true,
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return Container(
                    child: Row(
                      children: <Widget>[
                        Card(
                          child: Row(
                            // crossAxisAlignment: CrossAxisAlignment.stretch,

                            children: <Widget>[
                              Container(
                                child: Text('${items[index]}'),
                              ),
                              SizedBox(width: 90),
                              Container(
                                child: Text('${teamNameList[index]}'),
                              ),
                            ],
                          ),
                        ),
                      ],
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
