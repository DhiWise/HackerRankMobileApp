import 'package:hackerrank/presentation/login_screen/login_screen.dart';
import 'package:hackerrank/presentation/login_screen/binding/login_binding.dart';
import 'package:hackerrank/presentation/prepare_screen/prepare_screen.dart';
import 'package:hackerrank/presentation/prepare_screen/binding/prepare_binding.dart';
import 'package:hackerrank/presentation/challenges_screen/challenges_screen.dart';
import 'package:hackerrank/presentation/challenges_screen/binding/challenges_binding.dart';
import 'package:hackerrank/presentation/bookmark_screen/bookmark_screen.dart';
import 'package:hackerrank/presentation/bookmark_screen/binding/bookmark_binding.dart';
import 'package:hackerrank/presentation/profile_screen/profile_screen.dart';
import 'package:hackerrank/presentation/profile_screen/binding/profile_binding.dart';
import 'package:hackerrank/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:hackerrank/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static String loginScreen = '/login_screen';

  static String prepareScreen = '/prepare_screen';

  static String challengesScreen = '/challenges_screen';

  static String bookmarkScreen = '/bookmark_screen';

  static String profileScreen = '/profile_screen';

  static String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: prepareScreen,
      page: () => PrepareScreen(),
      bindings: [
        PrepareBinding(),
      ],
    ),
    GetPage(
      name: challengesScreen,
      page: () => ChallengesScreen(),
      bindings: [
        ChallengesBinding(),
      ],
    ),
    GetPage(
      name: bookmarkScreen,
      page: () => BookmarkScreen(),
      bindings: [
        BookmarkBinding(),
      ],
    ),
    GetPage(
      name: profileScreen,
      page: () => ProfileScreen(),
      bindings: [
        ProfileBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    )
  ];
}
