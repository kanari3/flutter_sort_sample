import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    initializeDateFormatting('ja_JP');

    return MaterialApp(
      locale: const Locale('ja', 'JP'),
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

// ignore: must_be_immutable
class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  List<Item> sortItems(List<Item> items) {

    // 1st sort
    items.sort((item1, item2) {
      return item1.startedDate.difference(item2.startedDate).inMinutes;
    });

    // 2nd sort
    items.sort((item1, item2) {
      return 0;
    });

    return items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('sort')),
    );
  }
}

