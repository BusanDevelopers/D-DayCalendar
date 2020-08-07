import 'dart:convert';

class Dday {
  final DateTime date;
  final String title;
  final String description;

  Dday(this.date, this.title, [this.description = ""]);

  factory Dday.fromJsonString(String jsonString) {
    JsonCodec codec = new JsonCodec();
    return Dday.fromJson(codec.decode(jsonString));
  }

  factory Dday.fromJson(dynamic json) {
    String strDate = json['date'];
    String title = json['title'];
    String description = json['description'];

    List<String> strDateSplit = strDate.split("-");
    int year = int.parse(strDateSplit[0]);
    int month = int.parse(strDateSplit[1]);
    int day = int.parse(strDateSplit[2]);

    DateTime date = new DateTime(year, month, day);

    return Dday(date, title, description);
  }
}