 
import 'package:flutter_custom_carousel/flutter_custom_carousel.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';

import '../../../data/data.dart';

class HomeController extends GetxController{
  List<int> cardIndexes = List.generate(moviesData.length, (i) => i);
  var selectedIndex = 0.obs;
  late CustomCarouselScrollController controller;

    initial(){
      controller = CustomCarouselScrollController();
    Future.delayed(300.ms, () {
      cardIndexes = cardIndexes.sublist(0);
      cardIndexes.shuffle();
      cardIndexes.insert(0, 0);
      controller.animateToItem(moviesData.length - 1, duration: 800.ms);
    });
    }

onSelectedItemChanged(i){
  selectedIndex.value = i;
  update();
}

}
