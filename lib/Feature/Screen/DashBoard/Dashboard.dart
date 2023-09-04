import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:tatahackathon/Feature/Screen/DashBoard/Favourite/FavouriteScreen.dart';
import 'package:tatahackathon/Feature/Screen/DashBoard/HomeScreen/HomeScreen.dart';
import 'package:tatahackathon/Feature/Screen/DashBoard/Message/MessageScreen.dart';
import 'package:tatahackathon/Feature/Screen/DashBoard/Profile/ProfileScreen.dart';
import 'package:tatahackathon/util.dart';

class DashBoard extends StatefulWidget {
  static const route ='/DashBoard';
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  List<Widget> page = [
    const HomeScreen(),
    const FavouriteScreen(),
    const MessageScreen(),
    const ProfileScreen(),
  ];

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: page[currentIndex],
      bottomNavigationBar: Container(
        color: darkThemeColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:15.0,vertical: 10),
          child: GNav(
            selectedIndex: currentIndex,
            hoverColor: homeColor,
            rippleColor: homeColor,
            backgroundColor: darkThemeColor,
            activeColor: homeColor,
            padding: const EdgeInsets.all(10),
            tabBackgroundColor: blackWithOpacity,
            color: blackWithOpacity,
            gap: 1,
            tabs:const  [
              GButton(icon: Icons.home,text: 'Home',),
              GButton(icon: Icons.favorite,text: 'Favourite',),
              GButton(icon: Icons.message,text: 'Message',),
              GButton(icon: Icons.rocket,text: 'Profile',),
            ],
            onTabChange: (value) {
              setState(() {
                currentIndex = value;
              });
            },
            ),
        ),
      ),
    );
  }
}