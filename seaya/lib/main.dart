import 'package:flutter/material.dart';
import 'package:seaya/screens/Routes/Navigation.dart';
import 'package:seaya/screens/Routes/missionList.dart';
import 'package:seaya/screens/Routes/newsDialog.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: missionList(),
    );
  }
}
