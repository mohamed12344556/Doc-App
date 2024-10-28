import 'dart:ui';

import 'package:doc_doc_app/widgets/custom_bNB_item.dart';
import 'package:doc_doc_app/widgets/custom_bar.dart';
import 'package:doc_doc_app/widgets/list_view_categories.dart';
import 'package:doc_doc_app/widgets/list_view_doctors_card.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});
  static const String id = 'home';

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomBar(),
                const SizedBox(height: 26),
                const Text(
                  'Doctor Categories',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Expanded(
                  child: ListViewCategories(),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Top Doctors',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                Expanded(
                  flex: 4,
                  child: DoctorListView(),
                ),
              ],
            ),

            /// Custom app bar with full blur effect
            Positioned(
              bottom: 18,
              left: 18,
              right: 18,
              height: 86,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
                  child: Container(
                    decoration: BoxDecoration(
                      // border: Border.all(width: 2, color: Colors.red),
                      borderRadius: BorderRadius.circular(40),
                      color: const Color.fromARGB(255, 190, 25, 25)
                          .withOpacity(0.1),
                    ),
                  ),
                ),
              ),
            ),

            /// Bottom Navigation bar items
            Positioned(
              bottom: 18,
              left: 22,
              right: 22,
              height: 86,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.max,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = 0;
                      });
                    },
                    child: CustomBNBItem(
                      icon:
                          selectedIndex == 0 ? Icons.home : Icons.home_outlined,
                      isSelected: selectedIndex == 0,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = 1;
                      });
                    },
                    child: CustomBNBItem(
                      icon: selectedIndex == 1
                          ? Icons.favorite
                          : Icons.favorite_border_outlined,
                      isSelected: selectedIndex == 1,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = 2;
                      });
                    },
                    child: CustomBNBItem(
                      icon: selectedIndex == 2
                          ? Icons.message
                          : Icons.message_outlined,
                      isSelected: selectedIndex == 2,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = 3;
                      });
                    },
                    child: CustomBNBItem(
                      icon: selectedIndex == 3
                          ? Icons.calendar_month
                          : Icons.calendar_month_outlined,
                      isSelected: selectedIndex == 3,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}