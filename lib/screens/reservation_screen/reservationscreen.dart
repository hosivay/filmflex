import 'dart:ui';
import 'package:flutter/material.dart';
import '../../data/data.dart';
import '../../data/reservation_data.dart';
import 'widget/appbar.dart';
import 'widget/background_widget.dart';
import 'widget/bottommenu.dart';

class ReservationPage extends StatelessWidget {
  const ReservationPage({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.maxFinite,
            width: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: ExactAssetImage(
                  'lib/assets/${moviesData[index]["Image"]}',
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: ClipRRect(
              // make sure we apply clip it properly
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.grey.withOpacity(0.1),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            top: 0,
            child: bgwidget(context),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(100, 170, 100, 140),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4, crossAxisSpacing: 20, mainAxisSpacing: 10),
              itemCount: reservData.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                      color: reservData[index] == Seat.available
                          ? Colors.grey.shade300.withOpacity(0.4)
                          : reservData[index] == Seat.taken
                              ? Colors.grey.shade300
                              : Colors.orange.shade400,
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(35),
                          bottomRight: Radius.circular(35))),
                );
              },
            ),
          ),
          Positioned(
              top: 60,
              left: 0,
              right: 0,
              child: SizedBox(
                height: 130,
                child: Hero(
                  tag: "title",
                  child: Image.asset(
                    'lib/assets/${moviesData[index]["title"]}',
                    fit: BoxFit.contain,
                  ),
                ),
              )),
          const Positioned(
            top: 45,
            left: 3,
            child: customappbar_reserv(),
          ),
          Positioned(
              bottom: 0, left: 0, right: 0, child: bottomMenu_reserv(context))
        ],
      ),
    );
  }


}
