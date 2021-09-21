import 'package:flutter/material.dart';
import 'user_transaction.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        home: Scaffold(
            appBar: AppBar(
              title: Text('App Transaction'),
            ),
            body: SingleChildScrollView(
              child: Column(
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
                  UserTransaction()
                ],
              ),
            )));
  }
}
