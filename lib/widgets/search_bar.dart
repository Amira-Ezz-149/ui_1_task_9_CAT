import 'package:flutter/material.dart';
import 'package:ui_task_9_cat/constants.dart';

class SearchBar extends StatelessWidget {
  final width = double.infinity;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: kSearchDecoration,
      padding: EdgeInsets.all(10.0),
      height: 60.0,
      width: width,
      child: TextField(

        decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(
              Icons.search,
              color: Colors.grey,
            ),
            hintStyle: TextStyle(color: Colors.grey),
            hintText: 'Search for projects, events, labels',
        ),

        keyboardType: TextInputType.text,
        autofocus: false,
        cursorColor: Colors.grey,
        onChanged: (value) {},
        style: TextStyle(),
      ),
    );
  }
}
