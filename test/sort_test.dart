import 'package:flutter_sort_sample/main.dart';
import 'package:flutter_sort_sample/model.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('construction items sort', (){

    var constructions = <ConstructionItem>[];
    var answers = <int>[];

    setUp(() async {
      await initializeDateFormatting('ja_JP');

      answers = [
        120120,
        121413,
        122750,
        120121,
        121414,
        122751,
        120122,
        121415,
        122752,
        120125,
        120126,
        122755,
        120127,
        121420,
        120128,
        121421,
        120129,
        121422,
        120130,
        121423,
        120131,
        121424,
        120132,
        121425,
        120133,
        121426,
        122197,
        120135,
        121428,
        120136,
        121429,
        120137,
        121430,
        120138,
        121431,
        120139,
        121432,
        121433,
        121434,
        121435,
      ];

      constructions = [
        ConstructionItem()..id = 122750..createdAt = string2date('2020-07-20T17:53:30+09:00')..startedDate = string2date('2020-11-06T00:00:00+09:00'),
        ConstructionItem()..id = 121413..createdAt = string2date('2020-07-11T21:11:44+09:00')..startedDate = string2date('2020-11-06T00:00:00+09:00'),
        ConstructionItem()..id = 120137..createdAt = string2date('2020-07-11T15:16:55+09:00')..startedDate = string2date('2020-11-23T00:00:00+09:00')..startedDatetime = string2date('2020-11-23T08:00:00+09:00')..endedDatetime = string2date('2020-11-23T17:00:00+09:00'),
        ConstructionItem()..id = 120121..createdAt = string2date('2020-07-11T15:16:53+09:00')..startedDate = string2date('2020-11-07T00:00:00+09:00')..startedDatetime = string2date('2020-11-07T08:00:00+09:00')..endedDatetime = string2date('2020-11-07T17:00:00+09:00'),
        ConstructionItem()..id = 121414..createdAt = string2date('2020-07-11T21:11:44+09:00')..startedDate = string2date('2020-11-07T00:00:00+09:00'),
        ConstructionItem()..id = 122751..createdAt = string2date('2020-07-20T17:53:30+09:00')..startedDate = string2date('2020-11-07T00:00:00+09:00'),
        ConstructionItem()..id = 120120..createdAt = string2date('2020-07-11T15:16:53+09:00')..startedDate = string2date('2020-11-06T00:00:00+09:00')..startedDatetime = string2date('2020-11-06T08:00:00+09:00')..endedDatetime = string2date('2020-11-06T17:00:00+09:00'),
        ConstructionItem()..id = 120122..createdAt = string2date('2020-07-11T15:16:53+09:00')..startedDate = string2date('2020-11-08T00:00:00+09:00')..startedDatetime = string2date('2020-11-08T08:00:00+09:00')..endedDatetime = string2date('2020-11-08T17:00:00+09:00'),
        ConstructionItem()..id = 121415..createdAt = string2date('2020-07-11T21:11:44+09:00')..startedDate = string2date('2020-11-08T00:00:00+09:00'),
        ConstructionItem()..id = 121430..createdAt = string2date('2020-07-11T21:11:45+09:00')..startedDate = string2date('2020-11-23T00:00:00+09:00'),
        ConstructionItem()..id = 122752..createdAt = string2date('2020-07-20T17:53:31+09:00')..startedDate = string2date('2020-11-08T00:00:00+09:00'),
        ConstructionItem()..id = 120126..createdAt = string2date('2020-07-11T15:16:54+09:00')..startedDate = string2date('2020-11-12T00:00:00+09:00')..startedDatetime = string2date('2020-11-12T08:00:00+09:00')..endedDatetime = string2date('2020-11-12T17:00:00+09:00'),
        ConstructionItem()..id = 122755..createdAt = string2date('2020-07-20T17:53:31+09:00')..startedDate = string2date('2020-11-12T00:00:00+09:00'),
        ConstructionItem()..id = 120127..createdAt = string2date('2020-07-11T15:16:54+09:00')..startedDate = string2date('2020-11-13T00:00:00+09:00')..startedDatetime = string2date('2020-11-13T08:00:00+09:00')..endedDatetime = string2date('2020-11-13T17:00:00+09:00'),
        ConstructionItem()..id = 121420..createdAt = string2date('2020-07-11T21:11:44+09:00')..startedDate = string2date('2020-11-13T00:00:00+09:00'),
        ConstructionItem()..id = 120128..createdAt = string2date('2020-07-11T15:16:54+09:00')..startedDate = string2date('2020-11-14T00:00:00+09:00')..startedDatetime = string2date('2020-11-14T08:00:00+09:00')..endedDatetime = string2date('2020-11-14T17:00:00+09:00'),
        ConstructionItem()..id = 121421..createdAt = string2date('2020-07-11T21:11:44+09:00')..startedDate = string2date('2020-11-14T00:00:00+09:00'),
        ConstructionItem()..id = 120129..createdAt = string2date('2020-07-11T15:16:54+09:00')..startedDate = string2date('2020-11-15T00:00:00+09:00')..startedDatetime = string2date('2020-11-15T08:00:00+09:00')..endedDatetime = string2date('2020-11-15T17:00:00+09:00'),
        ConstructionItem()..id = 120125..createdAt = string2date('2020-07-11T15:16:54+09:00')..startedDate = string2date('2020-11-11T00:00:00+09:00')..startedDatetime = string2date('2020-11-11T08:00:00+09:00')..endedDatetime = string2date('2020-11-11T17:00:00+09:00'),
        ConstructionItem()..id = 121422..createdAt = string2date('2020-07-11T21:11:44+09:00')..startedDate = string2date('2020-11-15T00:00:00+09:00'),
        ConstructionItem()..id = 120130..createdAt = string2date('2020-07-11T15:16:54+09:00')..startedDate = string2date('2020-11-16T00:00:00+09:00')..startedDatetime = string2date('2020-11-16T08:00:00+09:00')..endedDatetime = string2date('2020-11-16T17:00:00+09:00'),
        ConstructionItem()..id = 121423..createdAt = string2date('2020-07-11T21:11:44+09:00')..startedDate = string2date('2020-11-16T00:00:00+09:00'),
        ConstructionItem()..id = 121424..createdAt = string2date('2020-07-11T21:11:45+09:00')..startedDate = string2date('2020-11-17T00:00:00+09:00'),
        ConstructionItem()..id = 120132..createdAt = string2date('2020-07-11T15:16:54+09:00')..startedDate = string2date('2020-11-18T00:00:00+09:00')..startedDatetime = string2date('2020-11-18T08:00:00+09:00')..endedDatetime = string2date('2020-11-18T17:00:00+09:00'),
        ConstructionItem()..id = 121425..createdAt = string2date('2020-07-11T21:11:45+09:00')..startedDate = string2date('2020-11-18T00:00:00+09:00'),
        ConstructionItem()..id = 120133..createdAt = string2date('2020-07-11T15:16:54+09:00')..startedDate = string2date('2020-11-19T00:00:00+09:00')..startedDatetime = string2date('2020-11-19T08:00:00+09:00')..endedDatetime = string2date('2020-11-19T17:00:00+09:00'),
        ConstructionItem()..id = 121426..createdAt = string2date('2020-07-11T21:11:45+09:00')..startedDate = string2date('2020-11-19T00:00:00+09:00'),
        ConstructionItem()..id = 122197..createdAt = string2date('2020-07-17T14:02:50+09:00')..startedDate = string2date('2020-11-20T00:00:00+09:00')..startedDatetime = string2date('2020-11-20T08:30:00+09:00')..endedDatetime = string2date('2020-11-20T17:30:00+09:00'),
        ConstructionItem()..id = 120135..createdAt = string2date('2020-07-11T15:16:55+09:00')..startedDate = string2date('2020-11-21T00:00:00+09:00')..startedDatetime = string2date('2020-11-21T08:00:00+09:00')..endedDatetime = string2date('2020-11-21T17:00:00+09:00'),
        ConstructionItem()..id = 120131..createdAt = string2date('2020-07-11T15:16:54+09:00')..startedDate = string2date('2020-11-17T00:00:00+09:00')..startedDatetime = string2date('2020-11-17T08:00:00+09:00')..endedDatetime = string2date('2020-11-17T17:00:00+09:00'),
        ConstructionItem()..id = 121428..createdAt = string2date('2020-07-11T21:11:45+09:00')..startedDate = string2date('2020-11-21T00:00:00+09:00'),
        ConstructionItem()..id = 120136..createdAt = string2date('2020-07-11T15:16:55+09:00')..startedDate = string2date('2020-11-22T00:00:00+09:00')..startedDatetime = string2date('2020-11-22T08:00:00+09:00')..endedDatetime = string2date('2020-11-22T17:00:00+09:00'),
        ConstructionItem()..id = 121429..createdAt = string2date('2020-07-11T21:11:45+09:00')..startedDate = string2date('2020-11-22T00:00:00+09:00'),
        ConstructionItem()..id = 120138..createdAt = string2date('2020-07-11T15:16:55+09:00')..startedDate = string2date('2020-11-24T00:00:00+09:00')..startedDatetime = string2date('2020-11-24T08:00:00+09:00')..endedDatetime = string2date('2020-11-24T17:00:00+09:00'),
      ];
    });

    test('sort', () async {
      final result = MyHomePage().sortConstructions(constructions);

      print('result');
      print('id,  \t startedDate,              startedDateTime,          endedDatetime');
      for (var i = 0; i < constructions.length; i++) {
        print('${constructions[i].id},\t ${constructions[i].startedDate},  ${constructions[i].startedDatetime ?? 'null                   '},  ${constructions[i].endedDatetime}');
      }

      for (var i = 0; i < constructions.length; i++) {
        expect(result[i].id, answers[i]);
      }
    });

  });
}
