import 'dart:io';

import 'package:flutter/material.dart';
import 'package:makers_app/features/home/data/client/free_courses_client.dart';
import 'package:makers_app/features/home/data/models/free_courses.dart';
import 'package:makers_app/features/home/pages/free_course_detal_page.dart';
import 'package:makers_app/features/home/widgets/courses_card.dart';
import 'package:url_launcher/url_launcher.dart';
//import 'dart:convert' show utf8, windows1251;

import 'package:makers_app/utils/config/colors.dart';
import 'package:makers_app/utils/config/paddings.dart';

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

    // ======== Test Demonstration =================================
    // return Padding(
    //   padding: p20h,
    //   child: Column(
    //     children: [
    //       SizedBox(height: 20),
    //       GestureDetector(
    //         onTap: () async {
    //           final url = Uri.parse('https://www.instagram.com/p/Cujl2g6M_iR22NOniLM7lSqATxFeutHy9OJn8U0/?img_index=1');
    //           if (await canLaunchUrl(url as Uri)) {
    //             await launchUrl(url as Uri);
    //             print('clicked');
    //           }
    //         },
    //         child: ClipRRect(
    //             borderRadius: BorderRadius.circular(20),
    //             child: Image.network(
    //               'https://instagram.ffru7-1.fna.fbcdn.net/v/t51.2885-15/358770064_964345151349968_6832951607495170010_n.jpg?stp=dst-jpg_e35&_nc_ht=instagram.ffru7-1.fna.fbcdn.net&_nc_cat=108&_nc_ohc=YREJHotNgS0AX__vCTJ&edm=ACWDqb8BAAAA&ccb=7-5&ig_cache_key=MzE0NDUyMzQzMjcyMDQwMDAzNA%3D%3D.2-ccb7-5&oh=00_AfDWrMQkQ3urVBvR1Fsw1pWF8PzBrD4RPwVQ1s7S45IWAg&oe=64D2D2E6&_nc_sid=ee9879',
    //               fit: BoxFit.cover,
    //             ),
    //           ),
    //       ),
    //     ],
    //   ),
    // );


    // ======== Test Demonstration =================================








    // ======== DEMONSTRATION =================================

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
          const SizedBox(height: 15),
          Padding(
            padding: p20h,
            child: GestureDetector(
                  onTap: () async {
                    final url = Uri.parse(
                        'https://instagram.com/argen_teshebaev?igshid=MjEwN2IyYWYwYw==');
                    if (await canLaunchUrl(url as Uri)) {
                      await launchUrl(url as Uri);
                      print('clicked');
                    }
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                        'https://instagram.ffru7-1.fna.fbcdn.net/v/t51.2885-15/358770064_964345151349968_6832951607495170010_n.jpg?stp=dst-jpg_e35&_nc_ht=instagram.ffru7-1.fna.fbcdn.net&_nc_cat=108&_nc_ohc=YREJHotNgS0AX__vCTJ&edm=ACWDqb8BAAAA&ccb=7-5&ig_cache_key=MzE0NDUyMzQzMjcyMDQwMDAzNA%3D%3D.2-ccb7-5&oh=00_AfDWrMQkQ3urVBvR1Fsw1pWF8PzBrD4RPwVQ1s7S45IWAg&oe=64D2D2E6&_nc_sid=ee9879',
                        fit: BoxFit.cover,
                      ),
                    ),
            ),
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
          const SizedBox(height: 20),
        ],
      ),
    );

    // ======== DEMONSTRATION =================================

    // ======== TEST =================================

    // return true ? ListView.separated(
    //   itemCount: 2,
    //   separatorBuilder: (context, index) {
    //     return const SizedBox(height: 15);
    //   },
    //   itemBuilder: (context, index) {
    //     return Column(
    //       children: [
    //         false ?
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
    //         ) :
    //         GestureDetector(
    //           child: Container(
    //             decoration: BoxDecoration(
    //               borderRadius: BorderRadius.circular(20),
    //             ),
    //             padding: p20h,
    //             width: double.infinity,
    //             child: Image.network('https://instagram.ffru7-1.fna.fbcdn.net/v/t51.2885-15/358770064_964345151349968_6832951607495170010_n.jpg?stp=dst-jpg_e35&_nc_ht=instagram.ffru7-1.fna.fbcdn.net&_nc_cat=108&_nc_ohc=YREJHotNgS0AX__vCTJ&edm=ACWDqb8BAAAA&ccb=7-5&ig_cache_key=MzE0NDUyMzQzMjcyMDQwMDAzNA%3D%3D.2-ccb7-5&oh=00_AfDWrMQkQ3urVBvR1Fsw1pWF8PzBrD4RPwVQ1s7S45IWAg&oe=64D2D2E6&_nc_sid=ee9879'),
    //           ),
    //         ),
    //       ],
    //     );
    //   },
    // ) : const Center(
    //     child: CircularProgressIndicator(
    //       color: AppColor.mainBlue,
    //     )
    // );

    // ======== TEST =================================

    // ======== WORK =================================

    return isLoaded ? ListView.separated(
      itemCount: freeCourses!.length,
      separatorBuilder: (context, index) {
        return const SizedBox(height: 15);
      },
      itemBuilder: (context, index) {
        return Column(
          children: [
            false ?
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
            ) :
            Container(
              width: double.infinity,
              child: Image.network('https://instagram.ffru7-1.fna.fbcdn.net/v/t51.2885-15/358770064_964345151349968_6832951607495170010_n.jpg?stp=dst-jpg_e35&_nc_ht=instagram.ffru7-1.fna.fbcdn.net&_nc_cat=108&_nc_ohc=YREJHotNgS0AX__vCTJ&edm=ACWDqb8BAAAA&ccb=7-5&ig_cache_key=MzE0NDUyMzQzMjcyMDQwMDAzNA%3D%3D.2-ccb7-5&oh=00_AfDWrMQkQ3urVBvR1Fsw1pWF8PzBrD4RPwVQ1s7S45IWAg&oe=64D2D2E6&_nc_sid=ee9879'),
            ),
          ],
        );
      },
    ) : const Center(
        child: CircularProgressIndicator(
          color: AppColor.mainBlue,
        )
    );

    // ======== WORK =================================

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
