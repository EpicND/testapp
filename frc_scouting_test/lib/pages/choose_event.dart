import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  
  TextEditingController editingController = TextEditingController();
  final duplicateItems = List<String>.generate(100000, (index) => "Item $index");
  var items = List<String>();


  // @override
  void filterSearch(String query){
    List<String> dummySearchList = List<String>();
    dummySearchList.addAll(duplicateItems);
    if(query.isNotEmpty){
      List<String> dummyListData = List<String>();
      dummySearchList.forEach((element) {
        if(element.toLowerCase().contains(query.toLowerCase())){
          dummyListData.add(element);
        }
      });
      setState((){
        items.clear();
        items.addAll(dummyListData);
      });
      return;
      } else {
        setState((){
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
                onChanged: (value) {filterSearch(value);},
                controller: editingController,
                decoration: InputDecoration(
                  labelText: "Search",
                  hintText: "Search",
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
                return ListTile(
                  title: Text('${items[index]}'),
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
