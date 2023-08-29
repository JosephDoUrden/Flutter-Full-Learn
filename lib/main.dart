import 'package:flutter/material.dart';

import 'package:flutter_full_learn/303/lottie_learn.dart';
import 'package:flutter_full_learn/product/constant/project_constant.dart';
import 'package:flutter_full_learn/product/global/resource_context.dart';
import 'package:flutter_full_learn/product/global/theme_notifier.dart';
import 'package:flutter_full_learn/product/navigator/navigator_custom.dart';
import 'package:provider/provider.dart';

import 'product/navigator/navigator_manager.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      Provider(create: (_) => ResorceContext()),
      ChangeNotifierProvider<ThemeNotifier>(create: (context) => ThemeNotifier())
    ],
    builder: (context, child) => const MyApp(),
  ));
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

      // home: const LottieLearn(),
    );
  }
}
