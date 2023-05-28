// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class NavigationDetailLearn extends StatefulWidget {
  const NavigationDetailLearn({Key? key, this.isOkay = false}) : super(key: key);
  final bool isOkay;
  @override
  State<NavigationDetailLearn> createState() => _NavigationDetailLearnState();
}

class _NavigationDetailLearnState extends State<NavigationDetailLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton.icon(
          onPressed: () {
            Navigator.of(context).pop(!widget.isOkay);
          },
          icon: Icon(
            Icons.check,
            color: widget.isOkay ? Colors.red : Colors.green,
          ),
          label: widget.isOkay ? const Text('Red') : const Text('Onayla'),
        ),
      ),
    );
  }
}
