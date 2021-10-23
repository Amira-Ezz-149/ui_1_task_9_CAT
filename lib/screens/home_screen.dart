import 'package:flutter/material.dart';
import 'package:ui_task_9_cat/widgets/dashed_vertical_line.dart';
import 'package:ui_task_9_cat/widgets/grid_view_items.dart';
import 'package:ui_task_9_cat/widgets/search_bar.dart';
import 'package:ui_task_9_cat/constants.dart';

class HomeScreen extends StatelessWidget {
  static String id = 'home_screen';

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    List<String> images = <String>[
      "https://images.unsplash.com/photo-1458071103673-6a6e4c4a3413?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
      "https://images.unsplash.com/photo-1518806118471-f28b20a1d79d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=80",
      "https://images.unsplash.com/photo-1470406852800-b97e5d92e2aa?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
      "https://images.unsplash.com/photo-1473700216830-7e08d47f858e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
      'https://cdn.pixabay.com/photo/2015/03/17/14/05/sparkler-677774_960_720.jpg',
      'https://cdn.pixabay.com/photo/2015/03/17/14/05/sparkler-677774_960_720.jpg'
    ];

    List<Widget> widgets = [
      ...images.map<Widget>((img) => Image.network(
            img,
            fit: BoxFit.cover,
          ))
    ];
    return SafeArea(
      child: Scaffold(
        body: ListView(
          padding: EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 20.0),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              textBaseline: TextBaseline.alphabetic,
              children: [
               const Text('Good morning, Kristin', style: TextStyle(fontSize: 25.0, fontFamily: 'Lobster'),),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/girl.jpg'),
                  radius: 25.0,
                ),
              ],
            ),
            SizedBox(height: 20.0,),
            Container(
              decoration: kContainerDecoration,
              width: width,
              height: height / 5,
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 25.0),
                    width: width / 3,
                    child: Column(
                      children: [
                       const Text(
                          '25',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Lobster',
                            fontSize: 40.0,
                          ),
                        ),
                       const Text(
                          'September',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  DashedVerticalLine(),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                      //not cause overflow
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                       const Text('Up next',
                            style:
                                TextStyle(fontSize: 15, fontFamily: 'Lobster')),
                       const Text('meeting lunch with \nJames Strobinsty',
                            style: TextStyle(fontSize: 15)),
                       const Text("Dave's birthday party",
                            style: TextStyle(fontSize: 15)),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20.0,),

            ///search bar
            SearchBar(),
            SizedBox(height: 15.0,),
           const Text('Projects', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),),
            SizedBox(height: 20.0,),
            Container(
              child: GridViewItems(widgets: widgets),
            )
          ],
        ),
      ),
    );
  }
}

/*

https://cdn.pixabay.com/photo/2015/03/26/09/45/grapes-690230_960_720.jpg
https://cdn.pixabay.com/photo/2015/06/22/08/37/children-817365_960_720.jpg
https://cdn.pixabay.com/photo/2017/08/30/12/45/girl-2696947_960_720.jpg
*/
