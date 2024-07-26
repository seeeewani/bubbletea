import 'package:bubbleteatute/components/bottom_nav_bar.dart';
import 'package:bubbleteatute/pages/shop_page.dart';
import 'package:flutter/material.dart';
import 'cart_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void navigateBottomBar(int newIndex) {
    setState(() {
      _selectedIndex = newIndex;
    });
  }

  final List<Widget> _pages = [
    //shop page
    const ShopPage(),

    //cart page
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[200],
      body: _pages[_selectedIndex], // Display the selected page
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
    );
  }
}
