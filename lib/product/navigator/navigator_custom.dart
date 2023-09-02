import 'package:flutter/material.dart';
import '../../303/lottie_learn.dart';
import '../../303/mobx_image_picker/view/mobx_image_upload_view.dart';
import '../../303/navigator/navigate_home_detail_view.dart';
import '../../303/navigator/navigate_home_view.dart';
import '../../303/navigator/navigate_profile_view.dart';
import 'navigator_routes.dart';

mixin NavigatorCustom on Widget {
  Route<dynamic>? onGenerateRoute(RouteSettings routeSettings) {
    if (routeSettings.name?.isEmpty ?? true) {
      return _navigateToNormal(const MobxImageUpload());
    }

    final routes = routeSettings.name == NavigatorRoutes.paraf
        ? NavigateRoutes.init
        : NavigateRoutes.values.byName(routeSettings.name!.replaceFirst('/', ''));

    switch (routes) {
      case NavigateRoutes.init:
        return _navigateToNormal(const LottieLearn());
      case NavigateRoutes.home:
        return _navigateToNormal(const NavigateHomeView());
      case NavigateRoutes.detail:
        final id = routeSettings.arguments;
        return _navigateToNormal(
          NavigateHomeDetailView(
            id: id is String ? id : null,
          ),
          isFullScreenDialog: true,
        );
      case NavigateRoutes.profile:
        return _navigateToNormal(const NavigateProfileView());
    }
  }

  Route<dynamic>? _navigateToNormal(Widget child, {bool? isFullScreenDialog}) {
    return MaterialPageRoute(
      fullscreenDialog: isFullScreenDialog ?? false,
      builder: (context) {
        return child;
      },
    );
  }
}
