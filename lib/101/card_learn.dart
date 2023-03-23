import 'package:flutter/material.dart';

class CardLearn extends StatelessWidget {
  const CardLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Card(
            margin: ProjectMargins.cardMargin,
            color: Theme.of(context).colorScheme.error,
            child: SizedBox(height: 100, width: 100),
            shape: CircleBorder(),
          ),
          _customCard(
            child: const SizedBox(
              height: 100,
              width: 300,
              child: Center(
                child: Text('data'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _customCard extends StatelessWidget {
  _customCard({Key? key, required this.child}) : super(key: key);
  final Widget child;
  final roundedRectangleBorder =
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(20));

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: ProjectMargins.cardMargin,
      color: Theme.of(context).colorScheme.surface,
      child: child,
    );
  }
}

class ProjectMargins {
  static const cardMargin = EdgeInsets.all(10);
}
