import 'package:flutter/material.dart';
import 'package:m_coop/pages/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MCoops',
      theme: ThemeData(
        primaryColor: Color(0xFF80E1D1),
        canvasColor: Colors.transparent
      ),
      home: Login(),
    );
  }
}
