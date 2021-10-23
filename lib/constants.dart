import 'package:flutter/material.dart';

///search bar decoration
BoxDecoration kSearchDecoration = BoxDecoration(
  borderRadius: BorderRadius.circular(20.0),
  color: Colors.grey.shade200,
);


///container shadow
BoxDecoration kContainerDecoration =BoxDecoration(
  boxShadow: [
    BoxShadow(
      color: Colors.grey.shade400,
      offset: Offset(0, 7), //(x,y)
      blurRadius: 5,
    ),
  ],
  borderRadius: BorderRadius.circular(15.0),
  color: Colors.grey.shade100,
);
