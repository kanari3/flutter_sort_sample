import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:sorted/sorted.dart';

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

class MyHomePage extends StatelessWidget {

  List<Item> sortItems(List<Item> items) {
    return items..sort((item1, item2) {

      if (item1.startedDate == item2.startedDate) {
        //同じ日付のとき
        if (item1.startedDatetime == null && item2.startedDatetime == null) {

          if (item1.endedDatetime == null && item2.endedDatetime != null) {
            return 1;
          }
          if (item1.endedDatetime != null && item2.endedDatetime != null) {
            return item1.endedDatetime.difference(item2.endedDatetime).inMinutes;
          }
          return 0;

        }
        if (item1.startedDatetime != null && item2.startedDatetime == null) {
          return 0;
        }
        if (item1.startedDatetime == null && item2.startedDatetime != null) {
          return 1;
        }
        if (item1.startedDatetime != null && item2.startedDatetime != null) {
          if (item1.startedDatetime == item2.startedDatetime) {

            if (item1.endedDatetime == null && item2.endedDatetime != null) {
              return 1;
            }
            if (item1.endedDatetime != null && item2.endedDatetime != null) {
              return item1.endedDatetime.difference(item2.endedDatetime).inMinutes;
            }
            return 0;

          }
          return item1.startedDatetime.difference(item2.startedDatetime).inMinutes;
        }
        return 0;
      }
      // 違う日付のとき
      return item1.startedDate.difference(item2.startedDate).inMinutes;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('sort logic sample')),
    );
  }
}

