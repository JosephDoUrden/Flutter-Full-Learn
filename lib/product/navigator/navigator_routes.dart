import 'package:flutter_full_learn/303/lottie_learn.dart';
import 'package:flutter_full_learn/303/navigator/navigate_home_detail_view.dart';
import 'package:flutter_full_learn/303/navigator/navigate_home_view.dart';
import 'package:flutter_full_learn/303/navigator/navigate_profile_view.dart';

class NavigatorRoutes {
  final items = {
    "/": (context) => const LottieLearn(),
    "/home": (context) => const NavigateHomeView(),
    "/homeDetail": (context) => const NavigateHomeDetailView(),
    "/profile": (context) => const NavigateProfileView(),
  };
}
