import 'package:flutter_sort_sample/main.dart';
import 'package:flutter_sort_sample/model.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('items sort', (){

    var items = <Item>[];
    var answers = <int>[];

    setUp(() async {
      await initializeDateFormatting('ja_JP');

      answers = [
        01,
        02,
        03,
        04,
        05,
        06,
        07,
        08,
        09,
        10,
        11,
        12,
        13,
        14,
        15,
        16,
        17,
        18,
        19,
        20,
        21,
        22,
        23,
        24,
        25,
        26,
        27,
        28,
        29,
        30,
        31,
        32,
        33,
        34,
      ];

      items = [
        Item()..id = 03..createdAt = string2date('2020-07-20T17:53:30+09:00')..startedDate = string2date('2020-11-06T00:00:00+09:00'),
        Item()..id = 02..createdAt = string2date('2020-07-11T21:11:44+09:00')..startedDate = string2date('2020-11-06T00:00:00+09:00'),
        Item()..id = 32..createdAt = string2date('2020-07-11T15:16:55+09:00')..startedDate = string2date('2020-11-23T00:00:00+09:00')..startedDatetime = string2date('2020-11-23T08:00:00+09:00')..endedDatetime = string2date('2020-11-23T17:00:00+09:00'),
        Item()..id = 04..createdAt = string2date('2020-07-11T15:16:53+09:00')..startedDate = string2date('2020-11-07T00:00:00+09:00')..startedDatetime = string2date('2020-11-07T08:00:00+09:00')..endedDatetime = string2date('2020-11-07T17:00:00+09:00'),
        Item()..id = 05..createdAt = string2date('2020-07-11T21:11:44+09:00')..startedDate = string2date('2020-11-07T00:00:00+09:00'),
        Item()..id = 06..createdAt = string2date('2020-07-20T17:53:30+09:00')..startedDate = string2date('2020-11-07T00:00:00+09:00'),
        Item()..id = 01..createdAt = string2date('2020-07-11T15:16:53+09:00')..startedDate = string2date('2020-11-06T00:00:00+09:00')..startedDatetime = string2date('2020-11-06T08:00:00+09:00')..endedDatetime = string2date('2020-11-06T17:00:00+09:00'),
        Item()..id = 07..createdAt = string2date('2020-07-11T15:16:53+09:00')..startedDate = string2date('2020-11-08T00:00:00+09:00')..startedDatetime = string2date('2020-11-08T08:00:00+09:00')..endedDatetime = string2date('2020-11-08T17:00:00+09:00'),
        Item()..id = 08..createdAt = string2date('2020-07-11T21:11:44+09:00')..startedDate = string2date('2020-11-08T00:00:00+09:00'),
        Item()..id = 33..createdAt = string2date('2020-07-11T21:11:45+09:00')..startedDate = string2date('2020-11-23T00:00:00+09:00'),
        Item()..id = 09..createdAt = string2date('2020-07-20T17:53:31+09:00')..startedDate = string2date('2020-11-08T00:00:00+09:00'),
        Item()..id = 11..createdAt = string2date('2020-07-11T15:16:54+09:00')..startedDate = string2date('2020-11-12T00:00:00+09:00')..startedDatetime = string2date('2020-11-12T08:00:00+09:00')..endedDatetime = string2date('2020-11-12T17:00:00+09:00'),
        Item()..id = 12..createdAt = string2date('2020-07-20T17:53:31+09:00')..startedDate = string2date('2020-11-12T00:00:00+09:00'),
        Item()..id = 13..createdAt = string2date('2020-07-11T15:16:54+09:00')..startedDate = string2date('2020-11-13T00:00:00+09:00')..startedDatetime = string2date('2020-11-13T08:00:00+09:00')..endedDatetime = string2date('2020-11-13T17:00:00+09:00'),
        Item()..id = 14..createdAt = string2date('2020-07-11T21:11:44+09:00')..startedDate = string2date('2020-11-13T00:00:00+09:00'),
        Item()..id = 15..createdAt = string2date('2020-07-11T15:16:54+09:00')..startedDate = string2date('2020-11-14T00:00:00+09:00')..startedDatetime = string2date('2020-11-14T08:00:00+09:00')..endedDatetime = string2date('2020-11-14T17:00:00+09:00'),
        Item()..id = 16..createdAt = string2date('2020-07-11T21:11:44+09:00')..startedDate = string2date('2020-11-14T00:00:00+09:00'),
        Item()..id = 17..createdAt = string2date('2020-07-11T15:16:54+09:00')..startedDate = string2date('2020-11-15T00:00:00+09:00')..startedDatetime = string2date('2020-11-15T08:00:00+09:00')..endedDatetime = string2date('2020-11-15T17:00:00+09:00'),
        Item()..id = 10..createdAt = string2date('2020-07-11T15:16:54+09:00')..startedDate = string2date('2020-11-11T00:00:00+09:00')..startedDatetime = string2date('2020-11-11T08:00:00+09:00')..endedDatetime = string2date('2020-11-11T17:00:00+09:00'),
        Item()..id = 18..createdAt = string2date('2020-07-11T21:11:44+09:00')..startedDate = string2date('2020-11-15T00:00:00+09:00'),
        Item()..id = 19..createdAt = string2date('2020-07-11T15:16:54+09:00')..startedDate = string2date('2020-11-16T00:00:00+09:00')..startedDatetime = string2date('2020-11-16T08:00:00+09:00')..endedDatetime = string2date('2020-11-16T17:00:00+09:00'),
        Item()..id = 20..createdAt = string2date('2020-07-11T21:11:44+09:00')..startedDate = string2date('2020-11-16T00:00:00+09:00'),
        Item()..id = 22..createdAt = string2date('2020-07-11T21:11:45+09:00')..startedDate = string2date('2020-11-17T00:00:00+09:00'),
        Item()..id = 23..createdAt = string2date('2020-07-11T15:16:54+09:00')..startedDate = string2date('2020-11-18T00:00:00+09:00')..startedDatetime = string2date('2020-11-18T08:00:00+09:00')..endedDatetime = string2date('2020-11-18T17:00:00+09:00'),
        Item()..id = 24..createdAt = string2date('2020-07-11T21:11:45+09:00')..startedDate = string2date('2020-11-18T00:00:00+09:00'),
        Item()..id = 25..createdAt = string2date('2020-07-11T15:16:54+09:00')..startedDate = string2date('2020-11-19T00:00:00+09:00')..startedDatetime = string2date('2020-11-19T08:00:00+09:00')..endedDatetime = string2date('2020-11-19T17:00:00+09:00'),
        Item()..id = 26..createdAt = string2date('2020-07-11T21:11:45+09:00')..startedDate = string2date('2020-11-19T00:00:00+09:00'),
        Item()..id = 27..createdAt = string2date('2020-07-17T14:02:50+09:00')..startedDate = string2date('2020-11-20T00:00:00+09:00')..startedDatetime = string2date('2020-11-20T08:30:00+09:00')..endedDatetime = string2date('2020-11-20T17:30:00+09:00'),
        Item()..id = 28..createdAt = string2date('2020-07-11T15:16:55+09:00')..startedDate = string2date('2020-11-21T00:00:00+09:00')..startedDatetime = string2date('2020-11-21T08:00:00+09:00')..endedDatetime = string2date('2020-11-21T17:00:00+09:00'),
        Item()..id = 21..createdAt = string2date('2020-07-11T15:16:54+09:00')..startedDate = string2date('2020-11-17T00:00:00+09:00')..startedDatetime = string2date('2020-11-17T08:00:00+09:00')..endedDatetime = string2date('2020-11-17T17:00:00+09:00'),
        Item()..id = 29..createdAt = string2date('2020-07-11T21:11:45+09:00')..startedDate = string2date('2020-11-21T00:00:00+09:00'),
        Item()..id = 30..createdAt = string2date('2020-07-11T15:16:55+09:00')..startedDate = string2date('2020-11-22T00:00:00+09:00')..startedDatetime = string2date('2020-11-22T08:00:00+09:00')..endedDatetime = string2date('2020-11-22T17:00:00+09:00'),
        Item()..id = 31..createdAt = string2date('2020-07-11T21:11:45+09:00')..startedDate = string2date('2020-11-22T00:00:00+09:00'),
        Item()..id = 34..createdAt = string2date('2020-07-11T15:16:55+09:00')..startedDate = string2date('2020-11-24T00:00:00+09:00')..startedDatetime = string2date('2020-11-24T08:00:00+09:00')..endedDatetime = string2date('2020-11-24T17:00:00+09:00'),
      ];
    });

    test('sort', () async {
      final result = MyHomePage().sortItems(items);

      print('result');
      print('id,  startedDate,              startedDateTime,          endedDatetime');
      for (var i = 0; i < items.length; i++) {
        print('${items[i].id},\t ${items[i].startedDate},  ${items[i].startedDatetime ?? 'null                   '},  ${items[i].endedDatetime}');
      }

      for (var i = 0; i < items.length; i++) {
        expect(result[i].id, answers[i]);
      }
    });

  });
}
