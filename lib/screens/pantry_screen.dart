import 'package:flutter/material.dart';

import '../Widgets/header_widget.dart';
import '../Widgets/search_bar_widget.dart';
import '../styles/colors.dart';

class PantryScreen extends StatelessWidget {
  const PantryScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HeaderWidget(title: 'Home'),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SearchBarWidget(), //searchbar

              const SizedBox(
                height: 20,
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        width: 100,
                        height: 120,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: AppColors.lightRed,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(8.0),
                              height: 60,
                              width: 60,
                              child: Image.asset(
                                'lib/Icons/Menu Bar/Pantry Menu.png',
                                color: AppColors.darkGrey,
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Center(child: Text('Cupboard'))
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: Container(
                        width: 100,
                        height: 120,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: AppColors.lightGreen,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(8.0),
                              height: 60,
                              width: 60,
                              child: Image.asset(
                                'lib/Icons/Buttons/Fridge.png',
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Center(child: Text('Fridge'))
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: Container(
                        width: 100,
                        height: 120,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: AppColors.lightBlue,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(8.0),
                              height: 60,
                              width: 60,
                              child: Image.asset(
                                'lib/Icons/Buttons/Freezer.png',
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Center(
                              child: Text(
                                'Freezer',
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              //My specials
              Container(
                width: 140,
                height: 270,
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  color: AppColors.lightGold,
                ),
                child: Column(children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    width: 400,
                    height: 60,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            'lib/Icons/Miscell/1 2 Price.png',
                            width: 40,
                            height: 40,
                            fit: BoxFit.cover,
                            color: AppColors.darkGrey,
                          ),
                        ),
                        const SizedBox(width: 30),
                        const Text(
                          'My Specials',
                          style: TextStyle(fontSize: 28, color: Colors.black),
                        )
                      ],
                    ),
                  ),
                  //Box inside the box
                  Container(
                    padding: const EdgeInsets.all(10),
                    width: 400,
                    height: 190,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: Colors.white,
                    ),
                  )
                ]),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: 140,
                height: 270,
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  color: AppColors.headerGrey,
                ),
                child: Column(children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    width: 400,
                    height: 60,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Image.asset(
                            'lib/Icons/Watchlist/Watchlist.png',
                            width: 70,
                            height: 50,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(width: 30),
                        const Text(
                          'Watchlist',
                          style: TextStyle(fontSize: 28, color: Colors.black),
                        )
                      ],
                    ),
                  ),
                  //Box inside the box
                  Container(
                    padding: const EdgeInsets.all(10),
                    width: 400,
                    height: 190,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: Colors.white,
                    ),
                  )
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
