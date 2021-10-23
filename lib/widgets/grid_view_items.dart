import 'package:flutter/material.dart';

import 'customized_container.dart';

class GridViewItems extends StatelessWidget {
  const GridViewItems({
    @required this.widgets,
  });

  final List<Widget> widgets;

  @override
  Widget build(BuildContext context) {
    return GridView(
      children: [
        CustomizedContainer(
          title: 'Design\nLine up',
          dPercentage: .85,
          fontAndProgressColor: Colors.red,
          backColor: Colors.red.shade100,
          iPercentage: 85,
          status: 'Urgent',
        ),

        CustomizedContainer(
          title: 'Finesco',
          dPercentage: 1,
          fontAndProgressColor: Colors.green,
          backColor: Colors.green.shade100,
          iPercentage: 100,
          status: 'New',
        ),

        CustomizedContainer(
          title: 'Wide\nworld',
          dPercentage: .60,
          fontAndProgressColor: Colors.blue,
          backColor: Colors.blue.shade100,
          iPercentage: 60,
          status: 'InProcess',
          //widgets: widgets,
        ),

        CustomizedContainer(
          title: 'Yook!',
          dPercentage: .50,
          fontAndProgressColor: Colors.brown,
          backColor: Colors.brown.shade100,
          iPercentage: 50,
          status: 'Done',
          //widgets: widgets,
        ),
      ],
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,

        ///change the height of container
        childAspectRatio: 4 / 4,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
    );
  }
}
