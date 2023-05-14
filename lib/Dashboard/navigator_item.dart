import 'package:flutter/material.dart';

import '../screens/search_screen.dart';
import '../screens/cart_screen.dart';
import '../screens/categories_screen.dart';
import '../screens/home_screen.dart';
import '../screens/pantry_screen.dart';

class NavigatorItem {
  final String label;
  final String iconPath;
  final int index;
  final Widget screen;

  NavigatorItem(this.label, this.iconPath, this.index, this.screen);
}

List<NavigatorItem> navigatorItems = [
  NavigatorItem(
      "Home", "lib/Icons/Menu Bar/Home Menu.png", 0, const HomeScreen()),
  NavigatorItem("Categories", "lib/Icons/Menu Bar/Categories Menu.png", 1,
      const CategoriesScreen()),
  NavigatorItem(
      "Search", "lib/Icons/Menu Bar/Search Menu.png", 2, const SearchScreen()),
  NavigatorItem(
      "Cart", "lib/Icons/Menu Bar/Cart Menu.png", 3, const CartScreen()),
  NavigatorItem(
      "Pantry", "lib/Icons/Menu Bar/Pantry Menu.png", 4, const PantryScreen()),
];
