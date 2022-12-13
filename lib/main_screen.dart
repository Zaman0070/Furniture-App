import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class MainScreen extends StatefulWidget {

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  final _pageController = PageController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          const HomePage(),
          Container(color: Colors.red),
          Container(color: Colors.greenAccent.shade700),
          Container(color: Colors.orange),
        ],
        onPageChanged: (index) {
          setState(() => _currentIndex = index);
        },
      ),

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 20),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: BottomNavyBar(
            
            backgroundColor: Color(0xff95553d),
            selectedIndex: _currentIndex,
            showElevation: true,
            itemCornerRadius: 24,
            curve: Curves.easeIn,
            onItemSelected: (index) => setState(() => _currentIndex = index),
            items: <BottomNavyBarItem>[
              BottomNavyBarItem(
                icon: Image.asset('assets/images/home.png',height: 20,color: Colors.white,),
                title: Text('Home'),
                activeColor: Colors.white,
                textAlign: TextAlign.center,
              ),
              BottomNavyBarItem(
                icon: Image.asset('assets/images/message.png',height: 20,color: Colors.white),
                title: Text('Chat'),
                activeColor: Colors.white,
                textAlign: TextAlign.center,
              ),
              BottomNavyBarItem(
                icon: Image.asset('assets/images/user.png',height: 20,color: Colors.white),
                title: Text('Chat'),
                activeColor: Colors.white,
                textAlign: TextAlign.center,
              ),

            ],
          ),
        ),
      ),
    );
  }
}