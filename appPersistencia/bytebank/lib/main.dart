import 'package:bytebank/models/contact.dart';
import 'package:bytebank/screens/dashboard.dart';
import 'package:flutter/material.dart';
import 'http/webclient.dart';
import 'models/transaction.dart';

void main() {
  runApp(BytebankApp());
  save(Transaction(200.0, Contact(0, 'Gui', 2000))).then((transaction) => print(transaction));
  //findAll().then((transactions) => print('new transactons $transactions'));
  
  //save(Contact(0, 'Fabiana', 1000));
 // {
    //findAll().then((contacts) => debugPrint(contacts.toString()));
  //});
}

class BytebankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green[900],
        accentColor: Colors.blueAccent[700],
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.blueAccent[700],
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      home: Dashboard(),
    );
  }
} 