import 'package:flutter/material.dart';
import 'package:makers_app/features/home/data/client/free_courses_client.dart';
import 'package:makers_app/features/home/data/models/free_courses.dart';
import 'package:makers_app/features/home/pages/free_course_detal_page.dart';
import 'package:makers_app/features/home/widgets/courses_card.dart';
import 'dart:convert' show utf8, windows1251;

class FreeCoursesPage extends StatefulWidget {
  const FreeCoursesPage({super.key});

  @override
  State<FreeCoursesPage> createState() => _FreeCoursesPageState();
}

class _FreeCoursesPageState extends State<FreeCoursesPage> {
  List<FreeCourses>? freeCourses;
  var isLoaded = false;

  @override
  void initState() {
    super.initState();
    getFreeCourses();
  }

  getFreeCourses() async {
    freeCourses = await FreeCoursesClient().getFreeCourses('/free_course/');
    if(freeCourses != null) {
      setState(() {
        isLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // return FutureBuilder(
    //   future: FreeCoursesClient.get(),
    //     builder: builder
    // )

    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 25),
          CoursesCard(
              id: '1',
              title: 'Курс JavaScript',
              duration: '3',
              numLectures: '30',
              videoUrl: '',
              isPaid: false,
              buttonText: 'Начать обучение',
              price: '',
              onPressed: () {}
          ),
          const SizedBox(height: 15),
          CoursesCard(
              id: '1',
              title: 'Курс Python',
              duration: '2',
              numLectures: '15',
              videoUrl: '',
              isPaid: false,
              buttonText: 'Начать обучение',
              price: '',
              onPressed: () {}
          ),
        ],
      ),
    );

    // return isLoaded ? ListView.separated(
    //   itemCount: freeCourses!.length,
    //   separatorBuilder: (context, index) {
    //     return const SizedBox(height: 15);
    //   },
    //   itemBuilder: (context, index) {
    //     return Column(
    //       children: [
    //         CoursesCard(
    //           id: freeCourses![index].id,
    //           title: freeCourses![index].title,
    //           duration: freeCourses![index].duration,
    //           numLectures: freeCourses![index].numLectures,
    //           videoUrl: freeCourses![index].videoUrl,
    //           price: '',
    //           buttonText: 'Начать обучение',
    //           isPaid: false,
    //           onPressed: () {
    //             Navigator.of(context).push(MaterialPageRoute(
    //                 builder: (context) => FreeCoursesDetalPage(freeCourses: freeCourses![index])),
    //             );
    //           },
    //         ),
    //       ],
    //     );
    //   },
    // ) : const Center(
    //     child: CircularProgressIndicator()
    // );

    return Visibility(
      visible: isLoaded,
      replacement: const Center(
        child: CircularProgressIndicator(),
      ),
      child: ListView.separated(
        itemCount: freeCourses!.length,
        separatorBuilder: (context, index) {
          return const SizedBox(height: 15);
        },
        itemBuilder: (context, index) {
          return Column(
            children: [
              CoursesCard(
                id: freeCourses![index].id,
                title: freeCourses![index].title,
                duration: freeCourses![index].duration,
                numLectures: freeCourses![index].numLectures,
                videoUrl: freeCourses![index].videoUrl,
                price: '',
                buttonText: 'Начать обучение',
                isPaid: false,
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => FreeCoursesDetalPage(freeCourses: freeCourses![index])),
                  );
                },
              ),
            ],
          );
        },
      ),
    );

    //=================================
    // return Visibility(
    //   visible: isLoaded,
    //   replacement: const Center(
    //     child: CircularProgressIndicator(),
    //   ),
    //   child: ListView.separated(
    //     itemCount: freeCourses!.length,
    //     separatorBuilder: (context, index) {
    //       return const SizedBox(height: 15);
    //     },
    //     itemBuilder: (context, index) {
    //       return Column(
    //         children: [
    //           CoursesCard(
    //             id: freeCourses![index].id,
    //             title: freeCourses![index].title,
    //             duration: freeCourses![index].duration,
    //             numLectures: freeCourses![index].numLectures,
    //             videoUrl: freeCourses![index].videoUrl,
    //             price: '',
    //             buttonText: 'Начать обучение',
    //             isPaid: false,
    //             onPressed: () {
    //               Navigator.of(context).push(MaterialPageRoute(
    //                   builder: (context) => FreeCoursesDetalPage(freeCourses: freeCourses![index])),
    //               );
    //             },
    //           ),
    //         ],
    //       );
    //     },
    //   ),
    // );
    //=================================

    // return Column(
    //   children: [
    //     CoursesCard(),
    //     CoursesCard(),
    //   ],
    // );
  }
}
