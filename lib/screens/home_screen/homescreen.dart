
import 'package:flutter/material.dart'; 
import 'package:get/get.dart';
import '../../data/data.dart';
import 'getx/home_controller.dart';
import 'widgets/appbar_widget.dart';
import 'widgets/main_column_widget.dart';
 

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _homecontroller = Get.put(HomeController());
  @override
  void initState() {
    _homecontroller.initial();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () =>  AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          color: moviesData[_homecontroller.selectedIndex.value]["bgColor"],
          child: ClipRect(
            child: Stack(children: [
              Positioned(
                bottom: 0,
                child: Container(
                  width: MediaQuery.sizeOf(context).width,
                  height: MediaQuery.sizeOf(context).height / 1.5,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                        Colors.black.withOpacity(0),
                        Colors.black.withOpacity(1),
                      ])),
                ),
              ),
              const Positioned.fill(
                  child: RepaintBoundary(
                child: MainColumn(),
              )),
              const CustomAppbar(),
            ]),
          ),
        ),
      ),
    );
  }
}

