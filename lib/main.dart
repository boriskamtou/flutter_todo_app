import 'package:flutter/material.dart';
import 'package:flutter_todo_app/widgets/user_transaction.dart';

import './widgets/new_transaction.dart';
import './widgets/transaction_list.dart';

void main() => runApp(
      MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.purple,
          cursorColor: Colors.purple,
        ),
        home: MyHomePage(),
      ),
    );

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Card(
              child: Text('Bonjour le monde'),
              color: Colors.purpleAccent,
              elevation: 5,
            ),
          ),
          UserTransactions()
        ],
      ),
    );
  }
}
