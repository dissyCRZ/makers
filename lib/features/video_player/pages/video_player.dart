import 'package:flutter/material.dart';
import 'package:makers_app/features/login/widgets/button_login.dart';
import 'package:makers_app/utils/config/colors.dart';
import 'package:makers_app/utils/config/paddings.dart';
import 'package:readmore/readmore.dart';

class VideoPlayer extends StatefulWidget {
  const VideoPlayer({super.key});

  @override
  State<VideoPlayer> createState() => _VideoPlayerState();
}

class _VideoPlayerState extends State<VideoPlayer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.backspace_outlined,
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: p20h,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    const Text(
                      'JavaScript',
                      style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.w500,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.orange,
                          decorationThickness: 3),
                    ),
                    // Container(
                    //   width: 200,
                    //   height: 3,
                    //   color: Colors.blue,
                    // )
                  ],
                ),
                const Icon(
                  Icons.favorite,
                  color: Colors.orange,
                  size: 26,
                )
              ],
            ),
            const SizedBox(height: 20),
            Container(
              height: 190,
              width: double.infinity,
              color: Colors.orange,
            ),
            const SizedBox(height: 30),
            Text('data'),
            ReadMoreText(
              'JavaScript - это высокоуровневый язык программирования, который используется для создания интерактивных и динамических веб-страниц. Он позволяет добавлять функциональность на стороне клиента, взаимодействовать с пользователем и манипулировать содержимым веб-страницы. JavaScript также может быть использован для разработки серверных приложений, мобильных приложений и настольных приложений.',
              trimLines: 3,
              trimMode: TrimMode.Line,
              trimCollapsedText: ' ещё',
              trimExpandedText: ' меньше',
              moreStyle: TextStyle(color: Colors.grey[600]),
              lessStyle: TextStyle(color: Colors.grey[600]),
            ),
            const SizedBox(height: 20),
            ButtonLogin(onPressed: () {}, bc: AppColor.mainBlue)
            // RichText(text: TextSpan(
            //   style: TextStyle(color: Colors.black),
            //   children: <TextSpan> [
            //     TextSpan(
            //       text: 'JavaScript - это высокоуровневый язык программирования, который используется для создания интерактивных и динамических веб-страниц. Он позволяет добавлять функциональность на стороне клиента, взаимодействовать с пользователем и манипулировать содержимым веб-страницы. JavaScript также может быть использован для разработки серверных приложений, мобильных приложений и настольных приложений.',
            //
            //     )
            //   ]
            // ),
            // ),
            // Text(
            //   'JavaScript - это высокоуровневый язык программирования, который используется для создания интерактивных и динамических веб-страниц. Он позволяет добавлять функциональность на стороне клиента, взаимодействовать с пользователем и манипулировать содержимым веб-страницы. JavaScript также может быть использован для разработки серверных приложений, мобильных приложений и настольных приложений.',
            //   maxLines: 3,
            //   overflow: TextOverflow.ellipsis,
            // ),
          ],
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
