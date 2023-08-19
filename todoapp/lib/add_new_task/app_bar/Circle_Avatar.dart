import 'package:flutter/material.dart';

Widget Circleavatar() {
  return Container(
    height: 35,
    width: 35,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(17.5), color: Colors.blueGrey),
    child: Icon(
      Icons.done,
      size: 25,
      weight: 1,
    ),
  );
}
