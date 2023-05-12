import 'package:flutter/material.dart';
import 'package:musketeer_app/styles/colors.dart';

class ItemPlaceholder extends StatelessWidget {
  const ItemPlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 100,
        height: 130,
        margin: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          color: AppColors.widgetGrey,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                width: 95,
                height: 95,
                margin: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(22),
                ),
              ),
            ),
          ],
        ));
  }
}
