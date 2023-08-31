import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class KartalView extends StatelessWidget {
  const KartalView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('yusufhan.dev'),
      ),
      body: Column(
        children: [
          Text(
            'Kartal',
            style: context.textTheme.headlineLarge,
          )
        ],
      ),
    );
  }
}
