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
  var constructions = <ConstructionItem>[];

  List<ConstructionItem> sortConstructions(List<ConstructionItem> constructions) {

      constructions.sort((item1, item2) {
        return item1.startedDate.difference(item2.startedDate).inMinutes;
      });

      constructions.sort((item1, item2) {
        return 0;
      });

      return constructions;
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('sort')),
    );
  }
}

