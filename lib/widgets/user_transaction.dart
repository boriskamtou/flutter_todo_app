import 'package:flutter/material.dart';

import '../models/transaction.dart';
import '../widgets/new_transaction.dart';
import '../widgets/transaction_list.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransactions = [
    Transaction(
      id: 't1',
      title: 'New Shoes',
      amount: 65.78,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Buy flutter book',
      amount: 23.55,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't3',
      title: 'New Desk setup',
      amount: 350.78,
      date: DateTime.now(),
    ),
  ];
  void _addNewTransaction(String titleTransaction, double amoutTransaction){
    final transaction = Transaction(title: titleTransaction, amount: amoutTransaction, date: DateTime.now(), id:DateTime.now().toString());
    setState(() {
     _userTransactions.add(transaction); 
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransactions),
      ],
    );
  }
}
