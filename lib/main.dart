import 'package:app/transaction.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Transaction> trns = [
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
                Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          labelText:'Title' ,
                        ),
                      ),
                       TextField(
                        decoration: InputDecoration(
                          labelText:'Amount' ,
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ],
                ),
                Column(children: trns.map((e){
                  return Container(
                    padding: EdgeInsets.all(5),
                    child: Card(
                      elevation: 5,
                      color: Colors.white,
                      child: Row(children: [
                        Container(
                          width: 55,
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.all(5),
                          decoration:BoxDecoration(
                            border: Border.all(color: Colors.blue,width: 3)
                          ),
                          child: Text('\$${e.amount}',style: TextStyle(fontWeight: FontWeight.bold),),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Text('${e.title}',style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15
                          ),),
                          Text('${e.date.toString()}'
                          ,style: TextStyle(
                            color: Colors.grey
                          ),
                          )
                        ],)
                      ],
                      ),
                    ),
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
