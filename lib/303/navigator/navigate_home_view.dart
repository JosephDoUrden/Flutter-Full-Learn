import 'package:flutter/material.dart';
import '../../product/mixin/navigator_mixin.dart';
import '../../product/navigator/navigator_manager.dart';
import '../../product/navigator/navigator_routes.dart';

class NavigateHomeView extends StatefulWidget {
  const NavigateHomeView({super.key});

  @override
  State<NavigateHomeView> createState() => _NavigateHomeViewState();
}

class _NavigateHomeViewState extends State<NavigateHomeView> with NavigatorMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigate Home View'),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_circle_up),
        onPressed: () async {
          await router.pushToPage(NavigateRoutes.detail, arguments: "yusufhan.dev");
          // await NavigatorManager.instance.pushToPage(
          //   NavigateRoutes.detail,
          //   arguments: "yusufhan.dev",
          // );
          // Navigator.of(context).pushNamed(
          //   NavigateRoutes.detail.withParaf,
          //   arguments: "abc",
          // );
        },
      ),
    );
  }
}
