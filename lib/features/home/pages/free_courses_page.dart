import 'package:flutter/material.dart';
import 'package:makers_app/features/home/data/client/free_courses_client.dart';
import 'package:makers_app/features/home/data/models/free_courses.dart';
import 'package:makers_app/features/home/widgets/courses_card.dart';
import 'package:makers_app/features/video_player/pages/video_player.dart';
import 'package:makers_app/utils/config/colors.dart';

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
    return isLoaded ? ListView.separated(
      itemCount: freeCourses!.length,
      separatorBuilder: (context, index) {
        return const SizedBox(height: 15);
      },
      itemBuilder: (context, index) {
        return Column(
          children: [
            true ?
            CoursesCard(
              id: freeCourses![index].id,
              title: freeCourses![index].title,
              duration: freeCourses![index].duration,
              numLectures: freeCourses![index].numLectures,
              price: '',
              buttonText: 'Начать обучение',
              isPaid: false,
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    //builder: (context) => FreeCoursesDetalPage(freeCourses: freeCourses![index])),
                    builder: (context) => VideoPlayer(
                      videoUrl: 'https://www.youtube.com/watch?v=mw8Iodykrhs&list=PL1Np8IlRHrq_TdI4I15Ai_CywXz86phAc',
                      title: freeCourses![index].title,
                      text: freeCourses![index].description,
                    )),
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

  }
}
