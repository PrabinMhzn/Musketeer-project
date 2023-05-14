import 'package:flutter/material.dart';
import 'package:musketeer_app/models/category_item.dart';
import 'package:musketeer_app/styles/colors.dart';

class ItemPlaceholder extends StatelessWidget {
  const ItemPlaceholder({
    Key? key,
    required this.item,
  }) : super(key: key);
  final CategoryItem item;
  final height = 200.00;
  final width = 175.00;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 100,
        height: 140,
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
                child: imageWidget(),
              ),
            ),
            SizedBox(
              height: 32,
              child: Center(
                child: Text(
                  item.name,
                  textAlign: TextAlign.center,
                ),
              ),
            )
          ],
        ));
  }

  Widget imageWidget() {
    return Image.asset(
      item.imagePath,
      fit: BoxFit.contain,
    );
  }
}
