import 'package:d_day_calendar/dday.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DdayUnit extends StatelessWidget {
  final Dday _dday;
  
  DdayUnit({
    @required Dday dday
  }): _dday = dday;

  @override
  Widget build(BuildContext context) {
    DateFormat formatter = new DateFormat('yyyy. MM. dd.');

    DateTime now = new DateTime.now();
    int remainDay = new DateTime(now.year, now.month, now.day).difference(_dday.date).inDays;
    Color ddayColor = Colors.blue[100];

    if(remainDay == 0) ddayColor = Colors.blue[900];
    else if(remainDay <= 10) ddayColor = Colors.blue[800];
    else if(remainDay <= 20) ddayColor = Colors.blue[700];
    else if(remainDay <= 30) ddayColor = Colors.blue[600];
    else if(remainDay <= 40) ddayColor = Colors.blue[500];
    else if(remainDay <= 50) ddayColor = Colors.blue[400];
    else if(remainDay <= 60) ddayColor = Colors.blue[300];
    else if(remainDay <= 70) ddayColor = Colors.blue[200];

    return GestureDetector(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 5
            )
          ]
        ),
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'D${(remainDay > 0 ? '+' : '')}${(remainDay == 0) ? '-Day' : remainDay}',
                    style: TextStyle(
                      color: ddayColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 50
                    ),
                  ),
                  SizedBox(width: 12),
                  Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Text(
                      formatter.format(_dday.date),
                      style: TextStyle(
                        color: ddayColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 16
                      )
                    )
                  )
                ],
              ),
              Text(
                _dday.title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                ),
              ),
              SizedBox(height: 10),
              Text(
                _dday.description,
                style: TextStyle(
                  color: Colors.grey
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              )
            ],
          )
        ),
      ),
      onTap: () {

      },
    );
  }
}