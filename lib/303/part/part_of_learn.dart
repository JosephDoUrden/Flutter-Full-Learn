import 'package:flutter/material.dart';

class PartofLearn extends StatefulWidget {
  const PartofLearn({super.key});

  @override
  State<PartofLearn> createState() => _PartofLearnState();
}

class _PartofLearnState extends State<PartofLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('yusufhan.dev'),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.abc_rounded))],
      ),
    );
  }
}
