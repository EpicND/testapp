import 'package:flutter/material.dart';
import 'package:frc_scouting_test/pages/home.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
      },
    ),
  );
}

