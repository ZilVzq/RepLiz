import 'package:flutter/material.dart';
import 'package:practica2/big_card.dart';
import 'package:practica2/home_page.dart';
import 'small_card.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:
      Scaffold(
        appBar: AppBar(
          title: Text("Tarea 4 By Liz"),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body:
          HomePage(),
      ),
    );
  }
}
