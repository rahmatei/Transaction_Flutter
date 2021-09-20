import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:app/add_Transaction.dart';
import 'package:app/transaction.dart';
import 'transaction_list.dart';

class UserTransaction extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> trns = [
    Transaction('1', 'Shoes', 10.2, DateTime.now()),
    Transaction('2', 'umberela', 13, DateTime.now()),
    Transaction('3', 'gift', 20, DateTime.now())
  ];
  void addNewTransaction() {
    Transaction tr = new Transaction(DateTime.now().toString(), 'SDSD', 55.5, DateTime.now());
    setState(() {
          trns.add(tr);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [AddTransaction(addNewTransaction), TransationList(transactionList: trns)],
    );
  }
}
