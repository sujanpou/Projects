import 'package:flutter/material.dart';
import 'package:ui/constant/colors.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:ui/view/screen/cart.dart';
import 'package:ui/view/screen/settings.dart';

import 'home.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

int selectedIndex = 0;
List<Widget> listPage = [
  const Home(),
  const Cart(),
  const Settings(),
];

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 0, 0, 0),
          // color: AppColor.darkBlue.withOpacity(0.9),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15.0,
            vertical: 5.0,
          ),
          child: GNav(
            padding: const EdgeInsets.all(8),
            color: AppColor.lightGrey,
            activeColor: Color.fromARGB(255, 238, 237, 237),
            gap: 5,
            tabs: const [
              GButton(
                icon: Icons.home,
                text: "Home",
              ),
              GButton(
                icon: Icons.shopping_cart_outlined,
                text: "Cart",
              ),
              GButton(
                icon: Icons.settings,
                text: "Settings",
              ),
            ],
            selectedIndex: selectedIndex,
            onTabChange: (index) {
              setState(
                () {
                  selectedIndex = index;
                },
              );
            },
          ),
        ),
      ),
      body: listPage.elementAt(selectedIndex),
    );
  }
}
