import 'package:intl/intl.dart';

DateTime string2date(String dateString) {
  return DateFormat('yyyy-MM-ddTHH:mm:ss+09:00', 'ja_JP').parse(dateString);
}


class Item {
  //required
  int id;
  DateTime createdAt;
  DateTime startedDate;
  DateTime endedDate;
  //optional
  DateTime startedDatetime;
  DateTime endedDatetime;

  Item({
    this.id,
    this.startedDate,
    this.endedDate,
    this.startedDatetime,
    this.endedDatetime,
    this.createdAt,
  });

}
