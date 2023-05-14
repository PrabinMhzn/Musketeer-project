import 'package:flutter/material.dart';
import 'package:musketeer_app/styles/colors.dart';

class SearchBarWidget extends StatelessWidget {
  final String searchIcon = "assets/icons/search_icon.svg";
  final String barcodeIcon = "lib/Icons/Miscell/Barcode.png";

  final String hintText;

  const SearchBarWidget({
    Key? key,
    this.hintText = 'Search for Products',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: AppColors.borderGrey,
            width: 8,
          )),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: hintText,
                border: InputBorder.none,
                prefixIcon: const Icon(Icons.search),
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: ImageIcon(
              AssetImage(barcodeIcon),
              size: 30,
              color: Colors.black,
            ),
          )
        ],
      ),
    );
  }
}
