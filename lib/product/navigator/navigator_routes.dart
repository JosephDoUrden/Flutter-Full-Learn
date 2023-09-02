import '../../303/lottie_learn.dart';
import '../../303/navigator/navigate_home_detail_view.dart';
import '../../303/navigator/navigate_home_view.dart';
import '../../303/navigator/navigate_profile_view.dart';

class NavigatorRoutes {
  static const paraf = "/";
  final items = {
    paraf: (context) => const LottieLearn(),
    NavigateRoutes.home.withParaf: (context) => const NavigateHomeView(),
    NavigateRoutes.detail.withParaf: (context) => const NavigateHomeDetailView(),
    NavigateRoutes.profile.withParaf: (context) => const NavigateProfileView(),
  };
}

enum NavigateRoutes { init, home, detail, profile }

extension NavigateRoutesExtension on NavigateRoutes {
  String get withParaf => "/$name";
}
