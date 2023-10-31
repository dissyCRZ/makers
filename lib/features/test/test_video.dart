import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class TestVideo extends StatefulWidget {
  final String videoUrl;
  const TestVideo({super.key, required this.videoUrl});


  @override
  State<TestVideo> createState() => _TestVideoState();
}

class _TestVideoState extends State<TestVideo> {
  late YoutubePlayerController controller;

  @override
  void initState() {
    super.initState();

    String url = widget.videoUrl;
    controller = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(url)!,
    );
  }

  @override
  void deactivate() {
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
            controller: controller
        ),
        builder: (context, player) => Scaffold(
          appBar: AppBar(
            title: Text('test video player'),
          ),
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Text('data'),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: player,
                ),
                Text('sad'),
              ],
            ),
          ),
        )
    );
  }
}

