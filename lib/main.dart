import 'package:app/add_Transaction.dart';
import 'package:flutter/material.dart';
import 'transaction_list.dart';
import 'transaction.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<Transaction> trns = [
    Transaction('1', 'Shoes', 10.2, DateTime.now()),
    Transaction('2', 'umberela', 13, DateTime.now()),
    Transaction('3', 'gift', 20, DateTime.now())
  ];
  void addNewTransaction( String title , double amount) {
    Transaction tr = new Transaction(DateTime.now().toString(), title, amount, DateTime.now());
    setState(() {
          trns.add(tr);
    });
  }
  showbottom(BuildContext ctx) {
    return showBottomSheet(
        context: ctx,
        builder: (_) {
          return AddTransaction(addTrns: addNewTransaction);
        });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        home: Scaffold(
          appBar: AppBar(
            title: Text('App Transaction'),
            actions: [IconButton(onPressed: () {}, icon: Icon(Icons.add))],
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
                TransationList(transactionList: trns)
              ],
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton(
              onPressed: () {
             showbottom(context);
              },
              child: Icon(Icons.add),
              shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(5))),
        ));
  }
}
