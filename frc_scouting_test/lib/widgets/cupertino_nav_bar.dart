import 'package:flutter/cupertino.dart';
import 'package:frc_scouting_test/pages/choose_event.dart';

class CupertinoNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.group), title: Text('Teams')),
        ],
      ),
      tabBuilder: (BuildContext context, int index) {
        return (index == 0)
            ? CupertinoTabView(
                builder: (context) => HomeCupertinoScreen(),
              )
            : CupertinoTabView(
                builder: (context) => ChooseLocation(),
              );
      },
    );
  }
}

class HomeCupertinoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(
          'Testing Turing 123',
          style: TextStyle(color: CupertinoColors.inactiveGray),
        ),
        backgroundColor: CupertinoColors.darkBackgroundGray,
      ),
      child: Center(
        child: Text(
          'Testing 123',
          style: TextStyle(color: CupertinoColors.inactiveGray),
        ),
      ),
    );
  }
}
