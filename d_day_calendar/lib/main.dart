import 'package:d_day_calendar/create_dday_page.dart';
import 'package:d_day_calendar/main_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => MainPage(),
        CreateDdayPage.routeName: (context) => CreateDdayPage()
      },
    );
  }
}
