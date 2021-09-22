import 'package:flutter_sort_sample/main.dart';
import 'package:flutter_sort_sample/model.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('items sort', (){

    var items = <Item>[];

    setUp(() async {
      await initializeDateFormatting('ja_JP');

      items = [
        Item()..id = 1..createdAt = string2date('2020-07-11T15:16:53+09:00')..startedDate = string2date('2020-11-06T00:00:00+09:00')..startedDatetime = string2date('2020-11-06T08:00:00+09:00')..endedDatetime = string2date('2020-11-07T18:00:00+09:00'),
        Item()..id = 0..createdAt = string2date('2020-07-11T15:16:53+09:00')..startedDate = string2date('2020-11-06T00:00:00+09:00')..startedDatetime = string2date('2020-11-06T08:00:00+09:00')..endedDatetime = string2date('2020-11-07T17:00:00+09:00'),
        Item()..id = 2..createdAt = string2date('2020-07-11T21:11:44+09:00')..startedDate = string2date('2020-11-06T00:00:00+09:00'),
        Item()..id = 3..createdAt = string2date('2020-07-20T17:53:30+09:00')..startedDate = string2date('2020-11-07T00:00:00+09:00'),
        Item()..id = 4..createdAt = string2date('2020-07-11T15:16:53+09:00')..startedDate = string2date('2020-11-08T00:00:00+09:00')..startedDatetime = string2date('2020-11-08T08:00:00+09:00')..endedDatetime = string2date('2020-11-08T17:00:00+09:00'),
        Item()..id = 5..createdAt = string2date('2020-07-11T21:11:44+09:00')..startedDate = string2date('2020-11-08T00:00:00+09:00'),
        Item()..id = 10..createdAt = string2date('2020-07-11T15:16:54+09:00')..startedDate = string2date('2020-11-13T00:00:00+09:00')..startedDatetime = string2date('2020-11-13T08:00:00+09:00')..endedDatetime = string2date('2020-11-13T17:00:00+09:00'),
        Item()..id = 6..createdAt = string2date('2020-07-20T17:53:31+09:00')..startedDate = string2date('2020-11-08T00:01:00+09:00'),
        Item()..id = 7..createdAt = string2date('2020-07-11T15:16:54+09:00')..startedDate = string2date('2020-11-11T00:00:00+09:00')..startedDatetime = string2date('2020-11-11T08:00:00+09:00')..endedDatetime = string2date('2020-11-11T17:00:00+09:00'),
        Item()..id = 8..createdAt = string2date('2020-07-11T15:16:54+09:00')..startedDate = string2date('2020-11-12T00:00:00+09:00')..startedDatetime = string2date('2020-11-12T08:00:00+09:00')..endedDatetime = string2date('2020-11-12T17:00:00+09:00'),
        Item()..id = 9..createdAt = string2date('2020-07-20T17:53:31+09:00')..startedDate = string2date('2020-11-12T00:00:00+09:00'),
        Item()..id = 11..createdAt = string2date('2020-07-11T21:11:44+09:00')..startedDate = string2date('2020-11-13T00:00:00+09:00'),
        Item()..id = 12..createdAt = string2date('2020-07-11T15:16:54+09:00')..startedDate = string2date('2020-11-14T00:00:00+09:00')..startedDatetime = string2date('2020-11-14T08:00:00+09:00')..endedDatetime = string2date('2020-11-14T17:00:00+09:00'),
        Item()..id = 13..createdAt = string2date('2020-07-11T15:16:54+09:00')..startedDate = string2date('2020-11-15T00:00:00+09:00')..startedDatetime = string2date('2020-11-15T08:00:00+09:00')..endedDatetime = string2date('2020-11-15T17:00:00+09:00'),
        Item()..id = 14..createdAt = string2date('2020-07-11T21:11:44+09:00')..startedDate = string2date('2020-11-15T00:00:00+09:00'),
        Item()..id = 15..createdAt = string2date('2020-07-11T15:16:54+09:00')..startedDate = string2date('2020-11-16T00:00:00+09:00')..startedDatetime = string2date('2020-11-16T08:00:00+09:00')..endedDatetime = string2date('2020-11-16T17:00:00+09:00'),
        Item()..id = 16..createdAt = string2date('2020-07-11T21:11:44+09:00')..startedDate = string2date('2020-11-16T00:00:00+09:00'),
        Item()..id = 17..createdAt = string2date('2020-07-11T15:16:54+09:00')..startedDate = string2date('2020-11-17T00:00:00+09:00')..startedDatetime = string2date('2020-11-17T08:00:00+09:00')..endedDatetime = string2date('2020-11-17T17:00:00+09:00'),
        Item()..id = 18..createdAt = string2date('2020-07-11T21:11:45+09:00')..startedDate = string2date('2020-11-17T00:00:00+09:00'),
        Item()..id = 19..createdAt = string2date('2020-07-11T15:16:54+09:00')..startedDate = string2date('2020-11-18T00:00:00+09:00')..startedDatetime = string2date('2020-11-18T08:00:00+09:00')..endedDatetime = string2date('2020-11-18T17:00:00+09:00'),
        Item()..id = 20..createdAt = string2date('2020-07-11T15:16:54+09:00')..startedDate = string2date('2020-11-19T00:00:00+09:00')..startedDatetime = string2date('2020-11-19T08:00:00+09:00')..endedDatetime = string2date('2020-11-19T17:00:00+09:00'),
        Item()..id = 21..createdAt = string2date('2020-07-11T21:11:45+09:00')..startedDate = string2date('2020-11-19T00:00:00+09:00'),
        Item()..id = 22..createdAt = string2date('2020-07-17T14:02:50+09:00')..startedDate = string2date('2020-11-20T00:00:00+09:00')..startedDatetime = string2date('2020-11-20T08:30:00+09:00')..endedDatetime = string2date('2020-11-20T17:30:00+09:00'),
        Item()..id = 23..createdAt = string2date('2020-07-11T15:16:55+09:00')..startedDate = string2date('2020-11-21T00:00:00+09:00')..startedDatetime = string2date('2020-11-21T08:00:00+09:00')..endedDatetime = string2date('2020-11-21T17:00:00+09:00'),
        Item()..id = 24..createdAt = string2date('2020-07-11T21:11:45+09:00')..startedDate = string2date('2020-11-21T00:00:00+09:00'),
        Item()..id = 25..createdAt = string2date('2020-07-11T15:16:55+09:00')..startedDate = string2date('2020-11-22T00:00:00+09:00')..startedDatetime = string2date('2020-11-22T08:00:00+09:00')..endedDatetime = string2date('2020-11-22T17:00:00+09:00'),
        Item()..id = 26..createdAt = string2date('2020-07-11T21:11:45+09:00')..startedDate = string2date('2020-11-22T00:00:00+09:00'),
        Item()..id = 27..createdAt = string2date('2020-07-11T15:16:55+09:00')..startedDate = string2date('2020-11-23T00:00:00+09:00')..startedDatetime = string2date('2020-11-23T08:00:00+09:00')..endedDatetime = string2date('2020-11-23T17:00:00+09:00'),
        Item()..id = 28..createdAt = string2date('2020-07-11T21:11:45+09:00')..startedDate = string2date('2020-11-23T00:00:00+09:00'),
        Item()..id = 29..createdAt = string2date('2020-07-11T15:16:55+09:00')..startedDate = string2date('2020-11-24T00:00:00+09:00')..startedDatetime = string2date('2020-11-24T08:00:00+09:00')..endedDatetime = string2date('2020-11-24T17:00:00+09:00'),
        Item()..id = 30..createdAt = string2date('2020-07-11T21:11:45+09:00')..startedDate = string2date('2020-11-24T00:00:00+09:00'),
        Item()..id = 31..createdAt = string2date('2020-07-11T15:16:55+09:00')..startedDate = string2date('2020-11-25T00:00:00+09:00')..startedDatetime = string2date('2020-11-25T08:00:00+09:00')..endedDatetime = string2date('2020-11-25T17:00:00+09:00'),
        Item()..id = 32..createdAt = string2date('2020-07-11T21:11:45+09:00')..startedDate = string2date('2020-11-25T00:00:00+09:00'),
        Item()..id = 33..createdAt = string2date('2020-07-11T21:11:45+09:00')..startedDate = string2date('2020-11-26T00:00:00+09:00'),
        // Item()..id = 999999..createdAt = string2date('2020-07-11T21:11:45+09:00')..startedDate = string2date('2020-11-26T00:00:00+09:00'),
        // Item()..id = 999999..createdAt = string2date('2020-07-11T21:11:45+09:00')..startedDate = string2date('2020-11-26T00:00:00+09:00'),
      ];
    });

    test('sort', () async {
      items.shuffle();

      final result = MyHomePage().sortItems(items);

      print('result');
      print('id,  startedDate,              startedDateTime,          endedDatetime');
      for (var i = 0; i < result.length; i++) {
        print('${result[i].id},\t ${result[i].startedDate},  ${result[i].startedDatetime ?? 'null                   '},  ${result[i].endedDatetime}');
      }

      for (var i = 0; i < items.length; i++) {
        expect(result[i].id, i);
      }
    });

  });
}
