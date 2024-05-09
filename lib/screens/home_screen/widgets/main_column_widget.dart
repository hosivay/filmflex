import 'package:filmflex/screens/home_screen/widgets/carousel_widget.dart';
import 'package:filmflex/screens/reservation_screen/reservationscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_carousel/flutter_custom_carousel.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';

import '../../../data/data.dart';
import '../getx/home_controller.dart';

class MainColumn extends StatefulWidget {
  const MainColumn({
    super.key,
  });

  @override
  State<MainColumn> createState() => _MainColumnState();
}

class _MainColumnState extends State<MainColumn> {
  final _homecontroller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    List<Widget> items = List.generate(moviesData.length, (i) => CustomCard(i));
    return Obx(
      () => Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Container(
              color: Colors.transparent,
              height: MediaQuery.sizeOf(context).height / 24,
            ),
            SizedBox(
                width: MediaQuery.sizeOf(context).width / 2,
                height: 150,
                child: Hero(
                  tag: "title",
                  child: Image.asset(
                    'lib/assets/${moviesData[_homecontroller.selectedIndex.value]["title"]}',
                    fit: BoxFit.fitWidth,
                  ),
                )),
            Expanded(
                child: SizedBox(
              width: MediaQuery.sizeOf(context).width / 1.6,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomCarousel(
                  physics: const CustomCarouselScrollPhysics(sticky: true),
                  itemCountAfter: 0,
                  alignment: Alignment.center,
                  scrollDirection: Axis.horizontal,
                  scrollSpeed: 0.5,
                  tapToSelect: false,
                  controller: _homecontroller.controller,
                  loop: true,
                  effectsBuilder: CustomCarousel.effectsBuilderFromAnimate(
                    effects: EffectList()
                        .untint(
                          duration: 100.ms,
                          color: Colors.black45,
                        )
                        .shimmer(
                          delay: 100.ms,
                          color: Colors.white70,
                          angle: 3.1,
                        )
                        .boxShadow(
                          begin: const BoxShadow(
                            color: Colors.black38,
                            blurRadius: 0,
                            spreadRadius: -4,
                            offset: Offset(0, 0),
                          ),
                          end: BoxShadow(
                            color: Colors.black.withOpacity(0),
                            blurRadius: 24,
                            offset: const Offset(-48, 0),
                          ),
                          borderRadius: BorderRadius.circular(24),
                        )
                        .rotate(
                          delay: 0.ms,
                          curve: Curves.easeIn,
                          begin: 0.02,
                        )
                        .flipH(
                          delay: 100.ms,
                          end: -0.15,
                          alignment: Alignment.center,
                          perspective: 2,
                        )
                        .slideX(end: 1.5),
                  ),
                  onSelectedItemChanged: (i) =>
                      _homecontroller.onSelectedItemChanged(i),
                  children: items,
                ),
              ),
            )),
            Container(
              color: Colors.transparent,
              height: MediaQuery.sizeOf(context).height / 3.5,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Text(
                      moviesData[_homecontroller.selectedIndex.value]["Name"],
                      style: const TextStyle(
                          fontSize: 35, fontWeight: FontWeight.bold),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text('Genres :'),
                          ListView.builder(
                            itemCount:
                                moviesData[_homecontroller.selectedIndex.value]
                                        ["Genres"]
                                    .length as int,
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) => Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.grey.withOpacity(0.6)),
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text(
                                      moviesData[_homecontroller.selectedIndex
                                          .value]["Genres"][index],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(
                            ReservationPage(
                              index: _homecontroller.selectedIndex.value,
                            ),
                            curve: Curves.easeIn,transition: Transition.circularReveal,
                            duration: const Duration(milliseconds: 700));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 32, top: 16),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 24, vertical: 12),
                          decoration: BoxDecoration(
                            color:   Colors.orange.shade600,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.fromLTRB(35, 0, 35, 0),
                            child: Text(
                              'Buy Ticket',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
