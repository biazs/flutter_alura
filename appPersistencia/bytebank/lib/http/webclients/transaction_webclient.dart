import 'dart:convert';
import 'package:bytebank/models/transaction.dart';
import 'package:bytebank/http/webclient.dart';
import 'package:http/http.dart';
import 'package:path/path.dart';

class TransactionWebClient {
  Future<List<Transaction>> findAll() async {
    final Response response =
        await client.get(baseUrl).timeout(Duration(seconds: 5));
    final List<dynamic> decodedJson = jsonDecode(response.body);
    /* final List<Transaction> transactions = List();
        for (Map<String, dynamic> transactionJson in decodedJson) {    
        transactions.add(Transaction.fromJson(transactionJson));
    }*/
    return decodedJson
        .map((dynamic json) => Transaction.fromJson(json))
        .toList();
  }

  Future<Transaction> save(Transaction transaction, String password) async {
    final String transactionJson = jsonEncode(transaction.toJson());

    final Response response = await client.post(baseUrl,
        headers: {
          'Content-type': 'application/json',
          'password': password,
        },
        body: transactionJson);

    if (response.statusCode == 400) {
      throw Exception('there was an error: submitting transaction');
    }

    if (response.statusCode == 401) {
      throw Exception('there was an error: authentication failed');
    }

    return Transaction.fromJson(jsonDecode(response.body));
  }
}
