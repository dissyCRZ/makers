import 'package:flutter/material.dart';
import 'package:makers_app/features/home/pages/free_courses_page.dart';
import 'package:makers_app/features/home/pages/paid_courses_page.dart';
import 'package:makers_app/utils/config/colors.dart';
import 'package:makers_app/utils/config/paddings.dart';

class MyTabBar extends StatefulWidget {
  const MyTabBar({super.key});

  @override
  State<MyTabBar> createState() => _MyTabBarState();
}

class _MyTabBarState extends State<MyTabBar> with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            SizedBox(height: 50),
            Padding(
              padding: p20h,
              child: Container(
                //height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  //color: AppColor.mainBlue.withOpacity(0.3),
                  border: Border.all(color: Color(0xffE0E5ED)),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: Container(
                        height: 42,
                        child: TabBar(
                          labelColor: Colors.black,
                          indicator: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                spreadRadius: 0,
                                blurRadius: 10,
                                offset: Offset(0, 0), // changes position of shadow
                              ),
                            ],
                          ),
                          controller: tabController,
                          tabs: [
                            Tab(
                              text: 'Бесплатные',
                            ),
                            Tab(
                              text: 'Платные',
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            // TabBarView(
            //     controller: tabController,
            //     children: [
            //       FreeCoursesPage(),
            //       PaidCoursesPage(),
            //     ]
            // )
            // Container(
            //   height: 25,
            //   color: Colors.transparent,
            // ),
            //SizedBox(height: 25),
            Expanded(
                child: TabBarView(
                  controller: tabController,
                    children: [
                      FreeCoursesPage(),
                      PaidCoursesPage(),
                    ]
                )
            ),
          ],
        ),
      ),
    );
  }
}



