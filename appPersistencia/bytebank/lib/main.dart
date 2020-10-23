import 'package:bytebank/screens/dashboard.dart';
import 'package:flutter/material.dart';
import 'http/webclient.dart';

void main() {
  runApp(BytebankApp());
  findAll().then((transactions) => print('new transactons $transactions'));
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