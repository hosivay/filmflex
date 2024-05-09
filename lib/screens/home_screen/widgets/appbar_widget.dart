

import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 45,
      left: 3,
      right: 15,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.circular(999),
              ),
              padding: const EdgeInsets.all(8),
              margin: const EdgeInsets.only(left: 16),
              child: const Icon(
                Icons.info_outline,
                color: Colors.black,
                size: 24,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.circular(999),
              ),
              padding: const EdgeInsets.all(8),
              margin: const EdgeInsets.only(left: 16),
              child: const Icon(
                Icons.source_outlined,
                color: Colors.black,
                size: 24,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
