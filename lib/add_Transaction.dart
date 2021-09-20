import 'package:flutter/material.dart';

class AddTransaction extends StatelessWidget {
  final Function addTrns;
  AddTransaction(this.addTrns);

  @override
  Widget build(BuildContext context) {
    TextEditingController _title = TextEditingController();
    TextEditingController _amount = TextEditingController();
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Title',
              ),
              controller: _title,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Amount',
              ),
              controller: _amount,
              keyboardType: TextInputType.number,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () {
                    addTrns();
                  },
                  child: Text(
                    'Add Transaction',
                    style: TextStyle(color: Colors.purple),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
