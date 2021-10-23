import 'package:flutter/material.dart';
import 'package:image_stack/image_stack.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:ui_task_9_cat/constants.dart';
import 'package:ui_task_9_cat/screens/home_screen.dart';
import 'package:ui_task_9_cat/screens/project_details.dart';
import 'images_stack.dart';

class CustomizedContainer extends StatelessWidget {
  static String id = 'customized-container';
  //List<Widget> widgets;
  String title;
  String status;
  double dPercentage;
  int iPercentage;
  Color backColor;
  Color fontAndProgressColor;

  CustomizedContainer({this.status,
    this.title,
    this.dPercentage,
    this.iPercentage,
    this.backColor,
    this.fontAndProgressColor});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10.0),
        decoration: kContainerDecoration,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ProjectDetails(
                      backColor: backColor,
                      iPercentage: iPercentage,
                      dPercentage: dPercentage,
                      title: title,
                      fontAndProgressColor: fontAndProgressColor,
                    )));
                    },
                  child: Text(
                    title,
                    maxLines: 2,
                    style: TextStyle(fontWeight: FontWeight.w400, fontFamily: 'Lobster'),
                  ),
                ),
                Hero(transitionOnUserGestures: true,
                  tag: 'circularPercentIndicator',
                  child: Container(
                    child: CircularPercentIndicator(
                      radius: 50.0,
                      lineWidth: 4,
                      backgroundColor: backColor,
                      percent: dPercentage,
                      progressColor: fontAndProgressColor,
                      circularStrokeCap: CircularStrokeCap.round,
                      animation: true,
                      center: Text(
                        '$iPercentage%',
                        style: TextStyle(color: fontAndProgressColor, fontSize: 12),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 5.0,),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 10.0,
              ),
              decoration: BoxDecoration(
                  color: backColor,
                  borderRadius: BorderRadius.horizontal(
                      right: Radius.circular(20.0),
                      left: Radius.circular(20.0))),
              child: Text(status, style: TextStyle(color: fontAndProgressColor),),
            ),
            SizedBox(height: 5.0,),
            Text('Team', style: TextStyle(fontWeight: FontWeight.bold),),
            SizedBox(height: 5.0,),
            ImagesStack( fontAndProgressColor: fontAndProgressColor),
          ],
        ));
  }
}

