import 'package:flutter/material.dart';
import 'package:flutter_full_learn/product/navigator/navigator_manager.dart';
import 'package:flutter_full_learn/product/navigator/navigator_routes.dart';

class NavigateHomeView extends StatefulWidget {
  const NavigateHomeView({super.key});

  @override
  State<NavigateHomeView> createState() => _NavigateHomeViewState();
}

class _NavigateHomeViewState extends State<NavigateHomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigate Home View'),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_circle_up),
        onPressed: () async {
          await NavigatorManager.instance.pushToPage(
            NavigateRoutes.detail,
            arguments: "yusufhan.dev",
          );
          // Navigator.of(context).pushNamed(
          //   NavigateRoutes.detail.withParaf,
          //   arguments: "abc",
          // );
        },
      ),
    );
  }
}
