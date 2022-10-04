import 'package:flutter/material.dart';
import 'package:new_aim/pages/rootapp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'KNUST NEW AIM',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const RootApp(),
    );
  }
}
