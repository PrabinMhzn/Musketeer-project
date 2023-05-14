import 'package:flutter/material.dart';

import '../styles/colors.dart';
import 'navigator_item.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: navigatorItems[currentIndex].screen,
        bottomNavigationBar: SizedBox(
          height: 80,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(15),
                topLeft: Radius.circular(15),
              ),
              boxShadow: [
                BoxShadow(
                    color: Colors.black38.withOpacity(0.1),
                    spreadRadius: 0,
                    blurRadius: 37,
                    offset: const Offset(0, -12)),
              ],
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(32),
                topRight: Radius.circular(32),
              ),
              child: BottomNavigationBar(
                //need to change color
                backgroundColor: AppColors.footerGrey,
                currentIndex: currentIndex,
                onTap: (index) {
                  setState(
                    () {
                      currentIndex = index;
                    },
                  );
                },
                type: BottomNavigationBarType.fixed,
                selectedItemColor: const Color.fromARGB(255, 255, 255, 255),
                selectedLabelStyle:
                    const TextStyle(fontWeight: FontWeight.w600),
                unselectedLabelStyle:
                    const TextStyle(fontWeight: FontWeight.w600),
                unselectedItemColor: const Color.fromARGB(255, 255, 255, 255),
                items: navigatorItems.map((e) {
                  return getNavigationBarItem(
                      label: e.label, index: e.index, iconPath: e.iconPath);
                }).toList(),
              ),
            ),
          ),
        ));
  }

  BottomNavigationBarItem getNavigationBarItem(
      {required String label, required String iconPath, required int index}) {
    Color iconColor = index == currentIndex
        ? const Color.fromARGB(255, 255, 255, 255)
        : const Color.fromARGB(255, 255, 255, 255);
    return BottomNavigationBarItem(
      label: label,
      icon: Container(
        padding: const EdgeInsets.all(11.0),
        decoration: BoxDecoration(
          color: index == currentIndex
              ? AppColors.selectedGrey.withOpacity(0.9)
              : null,
          borderRadius: BorderRadius.circular(50),
        ),
        child: SizedBox(
          width: 24,
          height: 24,
          child: Image.asset(
            iconPath,
            color: iconColor,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
