import 'package:d_day_calendar/calendar_unit.dart';
import 'package:d_day_calendar/create_dday_page.dart';
import 'package:d_day_calendar/dday.dart';
import 'package:d_day_calendar/dday_unit.dart';
import 'package:d_day_calendar/dummy/dummydday.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          ListView.builder(
            padding: EdgeInsets.only(top: 220),
            itemBuilder: (_, index) => CalendarUnit(index),
          ),
          Container(
            height: 220,
            decoration: BoxDecoration(
              color: Colors.lightBlue[300],
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 5
                )
              ],
              borderRadius: BorderRadius.only(bottomLeft: Radius.elliptical(width, 60), bottomRight: Radius.elliptical(width, 60))
            )
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  width: double.infinity,
                  height: 210,
                  child: Swiper(
                    autoplay: true,
                    autoplayDelay: 5000,
                    viewportFraction: 0.8,
                    scale: 0.85,
                    itemCount: DummyDdayData.dummyDdayJSON.length,
                    itemBuilder: (_, index) => DdayUnit(
                        dday: Dday.fromJsonString(
                            DummyDdayData.dummyDdayJSON[index])),
                  ))
            ],
          )
        ],
      )),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => Navigator.pushNamed(context, CreateDdayPage.routeName),
      ),
    );
  }
}
