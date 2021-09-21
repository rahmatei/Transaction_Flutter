import 'package:app/transaction.dart';
import 'package:flutter/material.dart';

class TransationList extends StatelessWidget {
  final List<Transaction> transactionList;

  TransationList({required this.transactionList});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
          children: transactionList.map((e) {
        return Container(
          padding: EdgeInsets.all(5),
          child: Card(
            elevation: 5,
            color: Colors.white,
            child: Row(
              children: [
                Container(
                  width: 55,
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(5),
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue, width: 3)),
                  child: Text(
                    '\$${e.amount}',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${e.title}',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    Text(
                      '${e.date.toString()}',
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                )
              ],
            ),
          ),
        );
      }).toList()),
    );
  }
}
