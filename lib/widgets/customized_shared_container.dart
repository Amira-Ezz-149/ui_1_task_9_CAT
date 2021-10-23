import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import '../constants.dart';
import 'images_stack.dart';

class CustomizedSharedContainer extends StatelessWidget {
   CustomizedSharedContainer({

   this.width,
   this.backColor,
    this.fontAndProgressColor,
     this.title,
     this.customChild,
     this.progressPercentage,
  }) ;
   String title;
   double width;
   Color backColor;
   Color fontAndProgressColor;
   Widget customChild;
   double progressPercentage;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      decoration: kContainerDecoration,
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         customChild,
          Divider(thickness: 1.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(title),
              Row(
                children: [
                  Icon(Icons.alarm),
                const Text(' 13:00 - 15:00'),
                ],),
            ],
          ),
          SizedBox(height: 15.0,),
          LinearPercentIndicator(
            backgroundColor: backColor,
            animation: true,
            width:width/1.2,
            lineHeight: 8.0,
            percent: progressPercentage,
            progressColor: fontAndProgressColor,
          ),
          SizedBox(height: 15.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ImagesStack( fontAndProgressColor: fontAndProgressColor,),
              Icon(Icons.share_outlined, color: Colors.grey.shade400,)
            ],
          )
        ],
      ),

    );
  }
}
