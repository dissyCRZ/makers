import 'package:flutter/material.dart';
import 'package:makers_app/features/home/widgets/tab_bar.dart';
import 'package:makers_app/features/search/pages/search_page.dart';
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
    SearchPage(),
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
            icon: Image.asset('lib/utils/assets/icons/courses.png', color: currentIndex == 0 ? AppColor.mainBlue : AppColor.fontHintColor,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('lib/utils/assets/icons/search.png', color: currentIndex == 1 ? AppColor.mainBlue : AppColor.fontHintColor,),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('lib/utils/assets/icons/profile.png', color: currentIndex == 2 ? AppColor.mainBlue : AppColor.fontHintColor,),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
