import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:order_food_app/pages/home.dart';
import 'package:order_food_app/pages/order.dart';
import 'package:order_food_app/pages/profile.dart';
import 'package:order_food_app/pages/wallet.dart';

class BottomNavigationBarDown extends StatefulWidget {
  const BottomNavigationBarDown({super.key});

  @override
  State<BottomNavigationBarDown> createState() =>
      _BottomNavigationBarDownState();
}

class _BottomNavigationBarDownState extends State<BottomNavigationBarDown> {
  int currentTabIndex = 0;
  List<Widget> pages = [];
  late Widget currentPage;
  late Home homePage;
  late Wallet walletPage;
  late Order orderPage;
  late Profile profilePage;

  @override
  void initState() {
    homePage = const Home();
    walletPage = const Wallet();
    orderPage = const Order();
    profilePage = const Profile();
    pages = [homePage, orderPage, walletPage, profilePage];
    currentPage = homePage;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        height: 65,
        backgroundColor: Colors.white,
        color: Colors.black,
        animationDuration: const Duration(milliseconds: 500),
        onTap: (int index) {
          setState(() {
            currentTabIndex = index;
            currentPage = pages[index];
          });
        },
        items: const [
          Icon(
            Icons.home_outlined,
            color: Colors.white,
          ),
          Icon(
            Icons.shopping_bag_outlined,
            color: Colors.white,
          ),
          Icon(
            Icons.wallet_outlined,
            color: Colors.white,
          ),
          Icon(
            Icons.person_outlined,
            color: Colors.white,
          ),
        ],
      ),
      body: pages[currentTabIndex],
    );
  }
}
