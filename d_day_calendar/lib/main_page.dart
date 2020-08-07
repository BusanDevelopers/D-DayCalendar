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
            ListView(
              padding: EdgeInsets.only(top: 220),
              children: [
                
              ],
            ),
            Container(
              height: 220,
              decoration: BoxDecoration(
                color: Colors.lightBlue[300],
                borderRadius: BorderRadius.only(bottomLeft: Radius.elliptical(width, 75), bottomRight: Radius.elliptical(width, 75))
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
                    itemBuilder: (_, index) => DdayUnit(dday: Dday.fromJsonString(DummyDdayData.dummyDdayJSON[index])),
                  )
                )
              ],
            )
          ],
        )
      ),
    );
  }
}