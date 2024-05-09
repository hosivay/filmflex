

import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: camel_case_types
class customappbar_reserv extends StatelessWidget {
  const customappbar_reserv({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.back();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white70.withOpacity(0.7),
          borderRadius: BorderRadius.circular(999),
        ),
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.only(left: 16),
        child: const Icon(
          Icons.arrow_back,
          color: Colors.black,
          size: 24,
        ),
      ),
    );
  }
}
