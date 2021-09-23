import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:sorted/sorted.dart';

import 'model.dart';

void main() => runApp(MyApp());

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

class MyHomePage extends StatelessWidget {

  List<Item> sortItems(List<Item> items) {

    return items.sorted([
      SortedComparable<Item, DateTime>(
            (item) => item.startedDate,
      ),
      SortedComparable<Item, DateTime>(
            (item) => item.startedDatetime, invert: true,
      ),
      SortedComparator<Item, DateTime>(
              (item) => item.endedDatetime,
              (a, b) {
                if (a != null && b == null){
                  return 1;
                }
                if (a == null && b != null){
                  return -1;
                }
                return -a.difference(b).inMinutes;
              }, invert: true
      ),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('sort logic sample')),
    );
  }
}

