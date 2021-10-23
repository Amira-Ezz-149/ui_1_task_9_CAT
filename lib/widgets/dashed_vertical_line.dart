import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';

class DashedVerticalLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: const EdgeInsets.only(top: 20.0, right: 20.0),
      child: Dash(
          dashGap: 15,
          direction: Axis.vertical,
          length: 100,
          dashLength: 30,
          dashColor: Colors.red),
    );
  }
}
