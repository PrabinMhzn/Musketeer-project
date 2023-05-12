import 'package:flutter/material.dart';
import 'package:musketeer_app/Widgets/item_placeholder.dart';

import '../Widgets/header_widget.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HeaderWidget(title: 'Categories'),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: const [
                  Expanded(child: ItemPlaceholder()),
                  Expanded(child: ItemPlaceholder()),
                  Expanded(child: ItemPlaceholder()),
                ],
              ),
              Row(
                children: const [
                  Expanded(child: ItemPlaceholder()),
                  Expanded(child: ItemPlaceholder()),
                  Expanded(child: ItemPlaceholder()),
                ],
              ),
              Row(
                children: const [
                  Expanded(child: ItemPlaceholder()),
                  Expanded(child: ItemPlaceholder()),
                  Expanded(child: ItemPlaceholder()),
                ],
              ),
              Row(
                children: const [
                  Expanded(child: ItemPlaceholder()),
                  Expanded(child: ItemPlaceholder()),
                  Expanded(child: ItemPlaceholder()),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
