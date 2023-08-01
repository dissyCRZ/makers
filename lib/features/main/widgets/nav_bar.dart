import 'package:flutter/material.dart';
import 'package:makers_app/features/home/widgets/tab_bar.dart';
import 'package:makers_app/utils/config/colors.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({super.key});

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  int currentIndex = 0;
  final pages = [
    MyTabBar(),
    Center(child: Text('Search'),),
    Center(child: Text('Profile'),),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        //backgroundColor: Colors.red,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        selectedItemColor: AppColor.mainBlue,
        unselectedItemColor: AppColor.fontHintColor,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index,
        ),
        items: [
          // BottomNavigationBarItem(
          //     icon: Icon(Icons.home),
          //     label: 'Home',
          // ),
          BottomNavigationBarItem(
            icon: Image.asset('lib/utils/assets/icons/homeicon.png'),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
