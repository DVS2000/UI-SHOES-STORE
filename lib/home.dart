import 'package:flutter/material.dart';
import 'pagehome.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nike',
      theme: ThemeData(
        primarySwatch: Colors.grey
      ),
      home: PageHome(),
    );
  }
}