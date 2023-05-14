// ignore: file_names
import 'package:flutter/material.dart';

import '../Widgets/header_widget.dart';
import '../Widgets/search_bar_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HeaderWidget(title: 'Search'),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: const [
            SizedBox(height: 30),
            SearchBarWidget(),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
