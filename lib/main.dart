import 'package:flutter/material.dart';

import 'interfaces/home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(useMaterial3: true, primarySwatch: Colors.teal, textTheme: const TextTheme(bodyText1: TextStyle(color: Color(0xFF133257))), iconTheme: const IconThemeData(color: Color(0xFF133257)), primaryIconTheme: const IconThemeData(color: Color(0xFF133257)), inputDecorationTheme: const InputDecorationTheme(iconColor: Color(0xFF133257))),
    darkTheme: ThemeData(useMaterial3: true, brightness: Brightness.dark, primarySwatch: Colors.teal),
    themeMode: ThemeMode.light,
    home: const Home(),
  ));
}
