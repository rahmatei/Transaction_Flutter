import 'package:flutter/material.dart';

class AddTransaction extends StatelessWidget {
  final Function addTrns;
  AddTransaction({required this.addTrns});

  final TextEditingController _title = TextEditingController();
  final TextEditingController _amount = TextEditingController();

  void submitedData() {
    String strTitle = _title.text;
    double amount = double.parse(_amount.text);
    if (strTitle.isEmpty || amount <= 0) {
      return;
    }
    addTrns(strTitle, amount);
  }

  @override
  Widget build(BuildContext context) {
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
              onSubmitted: (_) => submitedData,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Amount',
              ),
              controller: _amount,
              keyboardType: TextInputType.number,
              onSubmitted: (_) => submitedData(),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () => submitedData(), // addTrns,
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
