import 'package:flutter/material.dart';

Container bgwidget(BuildContext context) {
  return Container(
    width: MediaQuery.sizeOf(context).width,
    height: MediaQuery.sizeOf(context).height / 1.5,
    decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
          Colors.black.withOpacity(0.5),
          Colors.black.withOpacity(1),
        ])),
  );
}
