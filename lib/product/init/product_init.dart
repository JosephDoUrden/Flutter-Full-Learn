import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../global/resource_context.dart';
import '../global/theme_notifier.dart';
import 'localization_init.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class ProductInit {
  final LocalizationInit localizationInit = LocalizationInit();

  final List<SingleChildWidget> providers = [
    Provider(create: (_) => ResorceContext()),
    ChangeNotifierProvider<ThemeNotifier>(create: (context) => ThemeNotifier())
  ];

  Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();
    await EasyLocalization.ensureInitialized();
  }
}
