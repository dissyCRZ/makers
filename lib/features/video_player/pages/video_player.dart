import 'package:configurable_expansion_tile_null_safety/configurable_expansion_tile_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:makers_app/features/login/widgets/button_login.dart';
import 'package:makers_app/features/video_player/widgets/recommendation_card.dart';
import 'package:makers_app/utils/config/colors.dart';
import 'package:makers_app/utils/config/paddings.dart';
import 'package:makers_app/utils/config/texts.dart';
import 'package:makers_app/utils/widgets/custom_button.dart';
import 'package:readmore/readmore.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoPlayer extends StatefulWidget {
  const VideoPlayer({super.key, required this.videoUrl, required this.title, required this.text});
  final String videoUrl;
  final String title;
  final String text;


  @override
  State<VideoPlayer> createState() => _VideoPlayerState();
}

class _VideoPlayerState extends State<VideoPlayer> {
  bool favorite = false;

  late YoutubePlayerController controller;

  @override
  void initState() {
    super.initState();

    String url = widget.videoUrl;
    controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(url)!,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
      )
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
    return SafeArea(
      child: YoutubePlayerBuilder(
        player: YoutubePlayer(
          controller: controller,
          progressColors: ProgressBarColors(
            bufferedColor: Colors.orange,
            playedColor: AppColor.mainBlue,
            backgroundColor: Colors.white,
            handleColor: AppColor.mainBlue,
          ),
        ),
        builder: (context, player) => Scaffold(
          appBar: AppBar(
            leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Image.asset('lib/utils/assets/icons/back_arrow.png'),
            ),
            backgroundColor: Colors.white,
            elevation: 0,
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: p20h,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        children: [
                          Text(
                            'Backend',
                            style: TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.w500,
                                //decoration: TextDecoration.underline,
                                //decorationColor: Colors.orange,
                                decorationThickness: 3),
                          ),
                          // Container(
                          //   width: 200,
                          //   height: 3,
                          //   color: Colors.blue,
                          // )
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            favorite ? favorite = false : favorite = true;
                          });
                        },
                        child: favorite ? Image.asset('lib/utils/assets/icons/favorite_true.png') : Image.asset('lib/utils/assets/icons/favorite_false.png'),
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  Container(
                    child: player,
                  ),
                  const SizedBox(height: 30),
                  ReadMoreText(
                    'Backend-разработчик – это специалист, который занимается созданием и поддержкой серверной части веб-приложений. Backend (также известный как серверная часть) отвечает за обработку запросов пользователя, взаимодействие с базами данных, бизнес-логику и обеспечение безопасности данных.',
                    trimLines: 3,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: ' ещё',
                    trimExpandedText: ' меньше',
                    moreStyle: TextStyle(color: Colors.grey[600]),
                    lessStyle: TextStyle(color: Colors.grey[600]),
                  ),
                  const SizedBox(height: 20),
                  // CustomButton(
                  //     onPressed: () {},
                  //     bc: AppColor.mainBlue,
                  //     text: 'Пройти тест',
                  // ),
                  // const SizedBox(height: 20),

                  //========================================================

                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: ExpansionTile(
                      backgroundColor: Color(0xFFE0E5ED),
                      collapsedBackgroundColor: Color(0xFFE0E5ED),
                      iconColor: AppColor.mainBlue,
                      collapsedIconColor: AppColor.mainBlue,
                      title: Text('Видеолекции', style: h14ManropeB),
                      children: [
                        ListView.separated(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: 5,
                          itemBuilder: (context, index) => RecommendationCard(index: index),
                          separatorBuilder: (context, index) => const SizedBox(height: 10),
                        )
                      ],
                    ),
                  ),

                  const SizedBox(height: 10),

                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: ExpansionTile(
                      backgroundColor: Color(0xFFE0E5ED),
                      collapsedBackgroundColor: Color(0xFFE0E5ED),
                      iconColor: AppColor.mainBlue,
                      collapsedIconColor: AppColor.mainBlue,
                      title: Text('Рекомендации', style: h14ManropeB),
                      children: [
                        ListView.separated(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: 5,
                          itemBuilder: (context, index) => RecommendationCard(index: index),
                          separatorBuilder: (context, index) => const SizedBox(height: 10),
                        )
                      ],
                    ),
                  ),

                  const SizedBox(height: 10),

                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: ExpansionTile(
                      backgroundColor: Color(0xFFE0E5ED),
                      collapsedBackgroundColor: Color(0xFFE0E5ED),
                      iconColor: AppColor.mainBlue,
                      collapsedIconColor: AppColor.mainBlue,
                      title: Text('Комментарии', style: h14ManropeB),
                      children: [
                        ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: 0,
                          itemBuilder: (context, index) => RecommendationCard(index: index),
                        ),
                      ],
                    ),
                  ),

                  //========================================================

                  const SizedBox(height: 20),

                  //========================================================



                  //========================================================

                  // const SizedBox(height: 20),
                  // Container(
                  //   height: 50,
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(10),
                  //     color: const Color(0xFFE0E5ED)
                  //   ),
                  //     child: const Row(
                  //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //       children: [
                  //         Padding(
                  //           padding: p20h,
                  //           child: Text('Рекомендации', style: h14ManropeB,),
                  //         ),
                  //         Padding(
                  //           padding: p20h,
                  //           child: Icon(Icons.keyboard_arrow_down, color: AppColor.mainBlue,),
                  //         )
                  //       ],
                  //   ),
                  // ),
                  const SizedBox(height: 20),
                  // Expanded(
                  //   child: ListView.separated(
                  //     itemCount: 4,
                  //     itemBuilder: (context, index) => const RecommendationCard(),
                  //     separatorBuilder: (context, index) => const SizedBox(height: 10),
                  //   ),
                  // ),
                  // SingleChildScrollView(
                  //   child: ListView.separated(
                  //       itemCount: 3,
                  //       itemBuilder: (context, index) => RecommendationCard(),
                  //       separatorBuilder: (context, index) => SizedBox(height: 10),
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// import '/flutter_flow/flutter_flow_theme.dart';
// import '/flutter_flow/flutter_flow_util.dart';
// import '/flutter_flow/flutter_flow_youtube_player.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:provider/provider.dart';
//
// // class HomePageWidget extends StatefulWidget {
// //   const HomePageWidget({Key? key}) : super(key: key);
// //
// //   @override
// //   _HomePageWidgetState createState() => _HomePageWidgetState();
// // }
// //
// // class _HomePageWidgetState extends State<HomePageWidget> {
// //   late HomePageModel _model;
// //
// //   final scaffoldKey = GlobalKey<ScaffoldState>();
// //
// //   @override
// //   void initState() {
// //     super.initState();
// //     _model = createModel(context, () => HomePageModel());
// //   }
// //
// //   @override
// //   void dispose() {
// //     _model.dispose();
// //
// //     super.dispose();
// //   }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return YoutubeFullScreenWrapper(
// //       child: GestureDetector(
// //         onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
// //         child: Scaffold(
// //           key: scaffoldKey,
// //           backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
// //           appBar: AppBar(
// //             backgroundColor: FlutterFlowTheme.of(context).primary,
// //             automaticallyImplyLeading: false,
// //             title: Text(
// //               'Page Title',
// //               style: FlutterFlowTheme.of(context).headlineMedium.override(
// //                 fontFamily: 'Poppins',
// //                 color: Colors.white,
// //                 fontSize: 22,
// //               ),
// //             ),
// //             actions: [],
// //             centerTitle: false,
// //             elevation: 2,
// //           ),
// //           body: SafeArea(
// //             top: true,
// //             child: Column(
// //               mainAxisSize: MainAxisSize.max,
// //               children: [
// //                 FlutterFlowYoutubePlayer(
// //                   url: 'https://www.youtube.com/watch?v=C30hQ0ZSFoM',
// //                   autoPlay: false,
// //                   looping: true,
// //                   mute: false,
// //                   showControls: true,
// //                   showFullScreen: true,
// //                 ),
// //               ],
// //             ),
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }
//
// class VideoPlayer extends StatefulWidget {
//   const VideoPlayer({super.key});
//
//
//   @override
//   State<VideoPlayer> createState() => _VideoPlayerState();
// }
//
// class _VideoPlayerState extends State<VideoPlayer> {
//   late VideoPlayerModel _model;
//
//   final scaffoldKey = GlobalKey<ScaffoldState>();
//
//   @override
//   void initState() {
//     super.initState();
//     _model = createModel(context, () => VideoPlayerModel());
//   }
//
//   @override
//   void dispose() {
//     _model.dispose();
//
//     super.dispose();
//   }
//
//
//   @override
//   Widget build(BuildContext context) {
//     return YoutubeFullScreenWrapper(
//       child: GestureDetector(
//         onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
//         child: Scaffold(
//           key: scaffoldKey,
//           backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
//           appBar: AppBar(
//             backgroundColor: FlutterFlowTheme.of(context).primary,
//             automaticallyImplyLeading: false,
//             title: Text(
//               'Page Title',
//               style: FlutterFlowTheme.of(context).headlineMedium.override(
//                 fontFamily: 'Poppins',
//                 color: Colors.white,
//                 fontSize: 22,
//               ),
//             ),
//             actions: [],
//             centerTitle: false,
//             elevation: 2,
//           ),
//           body: SafeArea(
//             top: true,
//             child: Column(
//               mainAxisSize: MainAxisSize.max,
//               children: [
//                 FlutterFlowYoutubePlayer(
//                   url: 'https://www.youtube.com/watch?v=C30hQ0ZSFoM',
//                   autoPlay: false,
//                   looping: true,
//                   mute: false,
//                   showControls: true,
//                   showFullScreen: true,
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
