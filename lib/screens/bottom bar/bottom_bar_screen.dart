import 'package:b_store_task2/models/bottom_bar.dart';
import 'package:b_store_task2/screens/bottom bar/cart_screen.dart';
import 'package:b_store_task2/screens/bottom bar/favourite_screen.dart';
import 'package:b_store_task2/screens/bottom bar/home_screen.dart';
import 'package:b_store_task2/screens/bottom bar/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({super.key});

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  int _currentIndex = 0;
  final List<BottomBar> _bottomBarScreens = <BottomBar>[
    BottomBar(const HomeScreen()),
    BottomBar(const CartScreen()),
    BottomBar(const FavouriteScreen()),
    BottomBar(const ProfileScreen()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (value) {
          setState(
            () {
              _currentIndex = value;
            },
          );
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        elevation: 20,
        selectedItemColor: const Color(0xff586BCA),
        selectedLabelStyle: GoogleFonts.poppins(
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
        unselectedItemColor: const Color(0xffC0C0C0),
        unselectedLabelStyle: GoogleFonts.poppins(
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Cart',
            icon: Icon(Icons.shopping_cart),
          ),
          BottomNavigationBarItem(
            label: 'Favorite',
            icon: Icon(Icons.favorite),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(Icons.person),
          ),
        ],
      ),
      body: _bottomBarScreens[_currentIndex].widget,
    );
  }
}
