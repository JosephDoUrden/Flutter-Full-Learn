import 'package:flutter/material.dart';

class PaddingLearn extends StatelessWidget {
  const PaddingLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              color: Colors.white,
              height: 100,
            ),
          ),
          Padding(
            padding: ProjectPadding.pagePaddingVertical +
                ProjectPadding.pagePaddingHorizontal,
            child: Container(
              color: Colors.amber,
              height: 100,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 40),
            child: Text(
              'data',
              style: Theme.of(context).textTheme.displayMedium,
            ),
          ),
        ],
      ),
    );
  }
}

class ProjectPadding {
  static const pagePaddingVertical = EdgeInsets.symmetric(vertical: 20);
  static const pagePaddingHorizontal = EdgeInsets.symmetric(horizontal: 20);
}
