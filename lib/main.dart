import 'package:flutter/material.dart';

import './transaction.dart';

void main() => runApp(
      MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.purple,
        ),
        home: MyHomePage(),
      ),
    );

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
      id: 't1',
      title: 'New Shoes',
      amount: 65.78,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Buy flutter book',
      amount: 23.50,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't3',
      title: 'New Desk setup',
      amount: 350.78,
      date: DateTime.now(),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Card(
              child: Text('Bonjour le monde'),
              color: Colors.purpleAccent,
            ),
          ),
          Column(
            children: transactions.map((transaction) {
              return Card(
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(transaction.amount.toString()),
                    ),
                    Column(
                      children: <Widget>[
                        Text(transaction.title),
                        Text(transaction.date.toString()),
                      ],
                    )
                  ],
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
