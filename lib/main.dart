import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '303/lottie_learn.dart';
import '404/bloc/feature/login/view/login_view.dart';
import 'product/constant/project_constant.dart';
import 'product/global/theme_notifier.dart';
import 'product/init/product_init.dart';
import 'product/navigator/navigator_custom.dart';
import 'package:provider/provider.dart';

import 'product/navigator/navigator_manager.dart';

Future<void> main() async {
  final productInit = ProductInit();

  await productInit.init();

  runApp(
    EasyLocalization(
      supportedLocales: productInit.localizationInit.supportedLocales,
      path: productInit.localizationInit.localizationPath,
      child: MultiProvider(
        providers: productInit.providers,
        builder: (context, child) => const MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget with NavigatorCustom {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ProjectItems.projectName,
      debugShowCheckedModeBanner: false,
      theme: context.watch<ThemeNotifier>().currentTheme,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) {
            return const LottieLearn();
          },
        );
      },
      // routes: NavigatorRoutes().items,
      onGenerateRoute: onGenerateRoute,
      navigatorKey: NavigatorManager.instance.navigatorGlobalKey,

      home: const LoginView(),
    );
  }
}
