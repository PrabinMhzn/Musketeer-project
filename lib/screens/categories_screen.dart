import 'package:flutter/material.dart';
import 'package:musketeer_app/Widgets/item_placeholder.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:musketeer_app/Widgets/search_bar_widget.dart';
import 'package:musketeer_app/models/category_item.dart';
import '../Widgets/header_widget.dart';
import 'category_itemscreen.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HeaderWidget(title: 'Categories'),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SearchBarWidget(),
            const SizedBox(height: 20),
            Expanded(child: getStaggeredGridView(context)),
          ],
        ),
      ),
    );
  }

  Widget getStaggeredGridView(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: StaggeredGrid.count(
        crossAxisCount: 2,
        mainAxisSpacing: 3.0,
        crossAxisSpacing: 4.0,
        children: categoryItemsDemo.asMap().entries.map<Widget>((e) {
          CategoryItem categoryItem = e.value;
          return GestureDetector(
            onTap: () {
              onCategoryItemClicked(context, categoryItem);
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              child: ItemPlaceholder(
                item: categoryItem,
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  void onCategoryItemClicked(BuildContext context, CategoryItem categoryItem) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (BuildContext context) {
        return const CategoryItemsScreen();
      },
    ));
  }
}
