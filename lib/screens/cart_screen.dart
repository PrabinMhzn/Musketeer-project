import 'package:flutter/material.dart';
import '../Widgets/header_widget.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: HeaderWidget(title: 'Cart'),
      body: Padding(
        padding: EdgeInsets.all(16.0),
      ),
    );
  }
}
