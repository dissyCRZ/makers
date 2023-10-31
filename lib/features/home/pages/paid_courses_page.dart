import 'package:flutter/material.dart';
import 'package:makers_app/features/home/data/client/paid_courses_client.dart';
import 'package:makers_app/features/home/data/models/paid_courses.dart';
import 'package:makers_app/features/home/pages/paid_course_registr.dart';
import 'package:makers_app/features/home/widgets/courses_card.dart';
import 'package:makers_app/utils/config/colors.dart';

class PaidCoursesPage extends StatefulWidget {
  const PaidCoursesPage({super.key});

  @override
  State<PaidCoursesPage> createState() => _PaidCoursesPageState();
}

class _PaidCoursesPageState extends State<PaidCoursesPage> {
  List<PaidCourses>? paidCourses;
  var isLoaded = false;

  @override
  void initState() {
    super.initState();
    getFreeCourses();
  }

  getFreeCourses() async {
    paidCourses = await PaidCoursesClient().getPaidCourses('/paid_course/');
    if(paidCourses != null) {
      setState(() {
        isLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return isLoaded ? ListView.separated(
      itemCount: paidCourses!.length,
      separatorBuilder: (context, index) {
        return const SizedBox(height: 15);
      },
      itemBuilder: (context, index) {
        return Column(
          children: [
            CoursesCard(
              id: paidCourses![index].id,
              title: paidCourses![index].title,
              duration: paidCourses![index].duration,
              numLectures: paidCourses![index].numLectures,
              price: paidCourses![index].price,
              buttonText: 'Записаться',
              isPaid: true,
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => PaidCourseRegistr(),
                ),
                );
              },
            ),
          ],
        );
      },
    ) : const Center(
      child: CircularProgressIndicator(
        color: AppColor.mainBlue,
      ),
    );
  }
}
