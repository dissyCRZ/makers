import 'package:flutter/material.dart';
import 'package:makers_app/features/home/data/models/free_courses.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class FreeCoursesDetalPage extends StatefulWidget {
  final FreeCourses freeCourses;
  FreeCoursesDetalPage({super.key, required this.freeCourses});

  @override
  State<FreeCoursesDetalPage> createState() => _FreeCoursesDetalPageState();
}

class _FreeCoursesDetalPageState extends State<FreeCoursesDetalPage> {
  late YoutubePlayerController controller;
  final videoUrl = 'https://www.youtube.com/watch?v=YMx8Bbev6T4';

  @override
  void initState() {
    super.initState();

    // final videoID = YoutubePlayer.convertUrlToId(videoUrl);

    controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(videoUrl)!,
      flags: const YoutubePlayerFlags(
          autoPlay: false
      ),
    );
  }

  @override
  void deactive() {
    controller.pause();

    super.deactivate();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
      player: YoutubePlayer(
        controller: controller,
      ),
      builder: (context, player) => Scaffold(
          body: Column(
            children: [
              player
            ],
          ),
        ),
    );
  }
}
