import 'package:flutter/material.dart';

class ColorDemos extends StatefulWidget {
  const ColorDemos({super.key});

  @override
  State<ColorDemos> createState() => _ColorDemosState();
}

class _ColorDemosState extends State<ColorDemos> {
  Color? _backgroundColor = Colors.transparent;

  void changeBackground(Color color) {
    setState(() {
      _backgroundColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: _backgroundColor,
      bottomNavigationBar: BottomNavigationBar(onTap: _colorOnTap, items: const [
        BottomNavigationBarItem(icon: _ColorContainer(color: Colors.red), label: 'red'),
        BottomNavigationBarItem(icon: _ColorContainer(color: Colors.yellow), label: 'Yellow'),
        BottomNavigationBarItem(icon: _ColorContainer(color: Colors.green), label: 'Green')
      ]),
    );
  }

  void _colorOnTap(int value) {
    if (value == _MyColors.red.index) {
      changeBackground(Colors.red);
    } else if (value == _MyColors.yellow.index) {
      changeBackground(Colors.yellow);
    } else if (value == _MyColors.green.index) {
      changeBackground(Colors.green);
    }
  }
}

enum _MyColors { red, yellow, green }

class _ColorContainer extends StatelessWidget {
  const _ColorContainer({
    super.key,
    required this.color,
  });
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(color: color, width: 10, height: 10);
  }
}
