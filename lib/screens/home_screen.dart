import 'package:flutter/material.dart';
import 'package:musketeer_app/Widgets/header_widget.dart';

import '../Widgets/search_bar_widget.dart';
import '../styles/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HeaderWidget(title: 'Home'),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SearchBarWidget(), //searchbar
            const SizedBox(
              height: 10,
            ),

            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(16),
                      width: 140,
                      height: 60,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        color: AppColors.widgetGrey,
                      ),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'lib/Icons/Home Page/Piggy Bank Full.png',
                              width: 40,
                              height: 40,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(width: 10),
                            Container(
                              width: 80,
                              height: 50,
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                                color: Colors.white,
                              ),
                              child: const Center(
                                child: Text(
                                  '\$10.00',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              'Musketeer Savings',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              ),
                            )
                          ]),
                    ),

                    const SizedBox(
                      height: 10,
                    ),
                    //My specials
                    Container(
                      width: 140,
                      height: 250,
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
                              Image.asset(
                                'lib/Icons/Menu Bar/Pantry Menu.png',
                                width: 35,
                                height: 50,
                                fit: BoxFit.cover,
                                color: AppColors.darkGrey,
                              ),
                              const SizedBox(width: 50),
                              const Text(
                                'My Specials',
                                style: TextStyle(
                                    fontSize: 28, color: Colors.black),
                              )
                            ],
                          ),
                        ),
                        //Box inside the box
                        Container(
                          padding: const EdgeInsets.all(10),
                          width: 400,
                          height: 170,
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
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              width: 100,
                              height: 120,
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                color: AppColors.lightRed,
                              ),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Padding(padding: EdgeInsets.all(8.0)),
                                    Image.asset(
                                      'lib/Icons/Watchlist/Watchlist.png',
                                      width: 60,
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const Text(
                                      'Manage watchlist',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 18),
                                    )
                                  ]),
                            ),
                          ),
                          const SizedBox(width: 20),
                          Expanded(
                            child: Container(
                              width: 100,
                              height: 120,
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                color: AppColors.lightGreen,
                              ),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Padding(padding: EdgeInsets.all(8.0)),
                                    Image.asset(
                                      'lib/Icons/Miscell/1 2 Price.png',
                                      width: 40,
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    const Text(
                                      'Half Price Specials',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 18),
                                    )
                                  ]),
                            ),
                          ),
                          const SizedBox(width: 20),
                          Expanded(
                            child: Container(
                              width: 100,
                              height: 120,
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                color: AppColors.lightBlue,
                              ),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Padding(padding: EdgeInsets.all(8.0)),
                                    Image.asset(
                                      'lib/Icons/Buttons/Shopping List.png',
                                      width: 40,
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    const Text(
                                      'Manage watchlist',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 18),
                                    )
                                  ]),
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 140,
                      height: 250,
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
                          child: const Center(
                            child: Text(
                              'Order History',
                              style:
                                  TextStyle(fontSize: 28, color: Colors.black),
                            ),
                          ),
                        ),
                        //Box inside the box
                        Container(
                          padding: const EdgeInsets.all(10),
                          width: 400,
                          height: 170,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            color: Colors.white,
                          ),
                        )
                      ]),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
