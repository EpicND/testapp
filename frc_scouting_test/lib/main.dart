import 'package:flutter/material.dart';
import 'package:frc_scouting_test/pages/home.dart';
import 'package:frc_scouting_test/pages/choose_event.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/choose_event': (context) => ChooseLocation(),
      },
    ),
  );
}

