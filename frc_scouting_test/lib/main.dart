import 'package:flutter/material.dart';
import 'package:frc_scouting_test/pages/home.dart';
import 'package:frc_scouting_test/pages/choose_event.dart';
import 'package:frc_scouting_test/pages/android.dart';
import 'package:frc_scouting_test/widgets/cupertino_nav_bar.dart';
import 'package:frc_scouting_test/widgets/cupertino_nav_bar.dart';
import 'package:frc_scouting_test/widgets/cupertino_app.dart';
import 'package:frc_scouting_test/widgets/builder.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Android(),
        '/choose_event': (context) => ChooseLocation(),
      },
    ),
  );
}
