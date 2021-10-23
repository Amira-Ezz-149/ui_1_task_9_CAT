import 'package:flutter/material.dart';

class CustomizedStatusLabel extends StatelessWidget {
  CustomizedStatusLabel({

    this.backColor,
    this.fontAndProgressColor,
    this.title,
  });

  String title;
  Color backColor;
  Color fontAndProgressColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10.0,
      ),
      decoration: BoxDecoration(
          color: backColor,

          ///shade 100
          borderRadius: BorderRadius.horizontal(
              right: Radius.circular(20.0),
              left: Radius.circular(20.0))),
      child: Text(
        title,
        style: TextStyle(color: fontAndProgressColor

          /// shade 700
        ),
      ),
    );
  }
}
