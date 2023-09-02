import 'package:flutter/material.dart';
import '../core/random_image.dart';

class StackDemoView extends StatelessWidget {
  const StackDemoView({super.key});
  final _cardHeight = 50.0;
  final _cardWidth = 200.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        Expanded(
            flex: 4,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned.fill(bottom: _cardHeight / 2, child: const RandomImage()),
                Positioned(height: _cardHeight, width: _cardWidth, bottom: 0, child: const _cardCustom())
              ],
            )),
        const Spacer(flex: 6),
      ]),
    );
  }
}

class _cardCustom extends StatelessWidget {
  const _cardCustom();

  @override
  Widget build(BuildContext context) {
    return const Card(
      color: Colors.white,
    );
  }
}
