import 'package:flutter/material.dart';

class CreateDdayPage extends StatelessWidget {
  static String routeName = "/createdday";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        child: Stack(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 5)]),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.keyboard_arrow_left),
                    onPressed: () => Navigator.pop(context),
                  ),
                  Text(
                    '새 일정 만들기',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 50),
              child: Column(),
            )
          ],
        ),
      ),
    ));
  }
}
