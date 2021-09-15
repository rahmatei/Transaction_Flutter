import 'package:app/transaction.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<Transaction> trns = [
    Transaction('1', 'Shoes', 10.2, DateTime.now()),
    Transaction('2', 'umberela', 13, DateTime.now()),
    Transaction('3', 'gift', 20, DateTime.now())
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        home: Scaffold(
            appBar: AppBar(
              title: Text('App Transaction'),
            ),
            body: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  width: double.infinity,
                  child: Card(
                    elevation: 5,
                    color: Colors.blueAccent,
                    child: Text('App Center'),
                  ),
                ),
                Column(children: trns.map((e){
                  return Card(
                    elevation: 5,
                    color: Colors.blueAccent,
                    child: Text('App Center'),
                  );
                }).toList())
              ],
            )));
  }
}

/*
 [
                ,
                ],
                */
