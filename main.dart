
import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(255, 104, 103, 104),
        hintColor: const Color.fromARGB(255, 249, 54, 119),
        textTheme: const TextTheme(
        bodyText1: TextStyle(color: Color.fromARGB(255, 252, 252, 252))),
        appBarTheme: const AppBarTheme(elevation:0, centerTitle: true),
      ),
        
      home: Home(),
    );
  }
}

