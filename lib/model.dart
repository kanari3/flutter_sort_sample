import 'package:intl/intl.dart';

DateTime string2date(String dateString) {
  if (dateString == null) {
    return null;
  }
  if (dateString.contains('+')) {
    return DateFormat('yyyy-MM-ddTHH:mm:ss+09:00', 'ja_JP').parse(dateString);
  } else {
    final d = DateFormat('yyyy-MM-ddTHH:mm:ssZ').parseUTC(dateString);
    return d.toLocal();
  }
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
