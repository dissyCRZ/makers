// // GENERATED CODE - DO NOT MODIFY BY HAND
//
// // **************************************************************************
// // AutoRouterGenerator
// // **************************************************************************
//
// // ignore_for_file: type=lint
// // coverage:ignore-file
//
// part of 'router.dart';
//
// abstract class _$AppRouter extends RootStackRouter {
//   // ignore: unused_element
//   _$AppRouter({super.navigatorKey});
//
//   @override
//   final Map<String, PageFactory> pagesMap = {
//     LoginRoute.name: (routeData) {
//       final args = routeData.argsAs<LoginRouteArgs>(
//           orElse: () => const LoginRouteArgs());
//       return AutoRoutePage<dynamic>(
//         routeData: routeData,
//         child: LoginPage(key: args.key),
//       );
//     },
//     // Welcome.name: (routeData) {
//     //   return AutoRoutePage<dynamic>(
//     //     routeData: routeData,
//     //     child: const Welcome(),
//     //   );
//     // },
//   };
// }
//
// /// generated route for
// /// [LoginPage]
// class LoginRoute extends PageRouteInfo<LoginRouteArgs> {
//   LoginRoute({
//     Key? key,
//     List<PageRouteInfo>? children,
//   }) : super(
//           LoginRoute.name,
//           args: LoginRouteArgs(key: key),
//           initialChildren: children,
//         );
//
//   static const String name = 'LoginRoute';
//
//   static const PageInfo<LoginRouteArgs> page = PageInfo<LoginRouteArgs>(name);
// }
//
// class LoginRouteArgs {
//   const LoginRouteArgs({this.key});
//
//   final Key? key;
//
//   @override
//   String toString() {
//     return 'LoginRouteArgs{key: $key}';
//   }
// }
//
// /// generated route for
// /// [Welcome]
// class Welcome extends PageRouteInfo<void> {
//   const Welcome({List<PageRouteInfo>? children})
//       : super(
//           Welcome.name,
//           initialChildren: children,
//         );
//
//   static const String name = 'Welcome';
//
//   static const PageInfo<void> page = PageInfo<void>(name);
// }
