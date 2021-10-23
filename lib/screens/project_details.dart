import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:ui_task_9_cat/widgets/customized-status_label.dart';
import 'package:ui_task_9_cat/widgets/customized_shared_container.dart';
import 'package:ui_task_9_cat/widgets/images_stack.dart';
import 'home_screen.dart';

class ProjectDetails extends StatelessWidget {
  static String id = 'project_details';
  var date, time;
  String title;
  Color backColor;
  Color fontAndProgressColor;
  double dPercentage;
  int iPercentage;

  ProjectDetails(
      {this.backColor,
      this.fontAndProgressColor,
      this.dPercentage,
      this.title,
      this.iPercentage});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(
                  context, MaterialPageRoute(builder: (m) => HomeScreen()));
            },
            child: Icon(
              Icons.arrow_back_ios,
              size: 20.0,
              color: Colors.black,
            )),
        actions: [
          Icon(Icons.menu, color: Colors.black),
          SizedBox(width: 10.0,),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Icon(Icons.logout, color: Colors.black),
          ),
        ],
        elevation: 0.0,
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 20.0),
        children: [
          Text(
            title,
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontFamily: 'Lobster',
                fontSize: 25.0),
          ),
          SizedBox(height: 15.0,),
          Row(
            children: [
              Hero(
                tag: 'circularPercentIndicator',

                child: Container(
                  alignment: AlignmentDirectional.topStart,
                  child: CircularPercentIndicator(
                    radius: 120.0,
                    lineWidth: 10,
                    backgroundColor: backColor,
                    percent: dPercentage,
                    progressColor: fontAndProgressColor,
                    circularStrokeCap: CircularStrokeCap.round,
                    animation: true,
                    center: Text(
                      '$iPercentage%',
                      style:
                          TextStyle(color: fontAndProgressColor, fontSize: 12),
                    ),
                  ),
                ),

              ),
              SizedBox(width: 15.0,),
              Expanded(
                child: Container(
                  //color: Colors.yellow.shade50,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     const Text(
                        'Team',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18.0),
                      ),
                      SizedBox(height: 15.0,),
                      ImagesStack(fontAndProgressColor: fontAndProgressColor,),
                      SizedBox(height: 15.0,),
                      TextButton(
                        child: Row(
                          children: [
                            Icon(Icons.calendar_today),
                            SizedBox(
                              width: 10.0,
                            ),
                           const Text(
                              "choose date & time",
                            ),
                          ],
                        ),
                        onPressed: () async {
                          ///Date picker
                          date = await showDatePicker(
                              context: context,
                              initialDate: DateTime(2000),
                              firstDate: DateTime(1990),
                              lastDate: DateTime(2021));

                          ///Time picker
                          time = await showTimePicker(
                            context: context,
                            initialTime: TimeOfDay.now(),
                          );
                          print(time);
                          ///Snack Bar
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Row(
                              children: [
                                Icon(
                                  Icons.calendar_today,
                                  color: Colors.white,
                                ),
                                SizedBox(width: 10),
                                Text("${date.day}/${date.month}/${date.year}"),
                                SizedBox(width: 20),
                                Icon(
                                  Icons.access_alarm_outlined,
                                  color: Colors.white,
                                ),
                                SizedBox(width: 10),
                                Text("${time.hour}:${time.minute}"),
                              ],
                            ),
                            action: SnackBarAction(
                              onPressed: () {},
                              label: 'ok',
                            ),
                          ));
                        },
                      ),
                      CustomizedStatusLabel(
                        backColor: backColor,
                        fontAndProgressColor: fontAndProgressColor,
                        title: '+ Add Task',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 25.0,),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomizedStatusLabel(
                  fontAndProgressColor: Colors.grey.shade600,
                  backColor: Colors.grey.shade300,
                  title: 'To-dos',
                ),

                CustomizedStatusLabel(
                  fontAndProgressColor: Colors.grey.shade600,
                  backColor: Colors.grey.shade300,
                  title: 'UAT',
                ),

                CustomizedStatusLabel(
                  fontAndProgressColor: Colors.grey.shade600,
                  backColor: Colors.grey.shade300,
                  title: 'Done',
                ),

              ],
            ),
          ),
          SizedBox(height: 25.0,),
          CustomizedSharedContainer(
              customChild: Row(
                children: [
                  CustomizedStatusLabel(
                    title: 'New',
                    backColor: Colors.blue.shade100,
                    fontAndProgressColor: Colors.blue,
                  ),
                  SizedBox(width: 10.0,),
                  CustomizedStatusLabel(
                    title: 'Urgent',
                    backColor: Colors.red.shade100,
                    fontAndProgressColor: Colors.red,
                  ),

                ],
              ),
              title: 'Call with Australians',
              progressPercentage: .50,
              width: width,
              backColor: backColor,
              fontAndProgressColor: fontAndProgressColor),
          SizedBox(height: 20.0),

          CustomizedSharedContainer(
              customChild: CustomizedStatusLabel(
                title: 'In progress',
                backColor: Colors.amber.shade100,
                fontAndProgressColor: Colors.amber,
              ),
              title: 'Send a review to client',
              progressPercentage: .75,
              width: width,
              backColor: backColor,
              fontAndProgressColor: fontAndProgressColor),

          SizedBox(height: 20.0),
          CustomizedSharedContainer(
              customChild: CustomizedStatusLabel(
                title: 'New',
                backColor: Colors.blue.shade100,
                fontAndProgressColor: Colors.blue,
              ),
              title: 'Check weekly plan',
              progressPercentage: .30,
              width: width,
              backColor: backColor,
              fontAndProgressColor: fontAndProgressColor),
        ],
      ),
    );
  }
}
