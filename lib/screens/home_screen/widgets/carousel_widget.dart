

import 'package:flutter/material.dart';

import '../../../data/data.dart';

class CustomCard extends StatelessWidget {
  const CustomCard(this.index, {super.key});

  final int index;

  @override
  Widget build(BuildContext context) {
    Widget card = AspectRatio(
      aspectRatio: 2 / 3,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/assets/${moviesData[index]["Image"]}'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: const HSLColor.fromAHSL(1, 0, 1, 1).toColor(),
            width: 2,
          ),
        ),
      ),
    );

    return card;
  }
}