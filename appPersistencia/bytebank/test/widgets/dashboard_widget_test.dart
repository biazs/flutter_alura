import 'package:bytebank/database/dao/contact_dao.dart';
import 'package:bytebank/screens/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../matchers/matchers.dart';

void main() {
  final ContactDao contactDao = ContactDao();
    testWidgets('Should display the main image when the Dashboard is opened',
      (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: Dashboard()));
    final mainImage = find.byType(Image);
    expect(mainImage, findsOneWidget);
  });

  testWidgets(
      'Should display the transfer feature when the Dashboard is opened',
      (tester) async {
    await tester.pumpWidget(MaterialApp(home: Dashboard()));
    /* final iconTransferFeatureItem = find.widgetWithIcon(FeatureItem, Icons.monetization_on);
    expect(iconTransferFeatureItem, findsOneWidget);
    final nameTranferFeatureItem = find.widgetWithText(FeatureItem, 'Transfer');
    expect(nameTranferFeatureItem, findsOneWidget); */
    final transferFeatureItem = find.byWidgetPredicate((widget) =>
        featureItemMatcher(widget, 'Transfer', Icons.monetization_on));
    expect(transferFeatureItem, findsOneWidget);
  });

  testWidgets(
      'Should display the transaction feature when the Dashboard is opened',
      (tester) async {
    await tester.pumpWidget(MaterialApp(home: Dashboard()));
    final transactionFeatureItem = find.byWidgetPredicate((widget) =>
        featureItemMatcher(widget, 'Transaction Feed', Icons.description));
    expect(transactionFeatureItem, findsOneWidget);
  });
}

