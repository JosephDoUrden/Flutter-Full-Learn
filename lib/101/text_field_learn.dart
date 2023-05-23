import 'package:flutter/material.dart';

class TextFieldLearn extends StatefulWidget {
  const TextFieldLearn({super.key});

  @override
  State<TextFieldLearn> createState() => _TextFieldLearnState();
}

class _TextFieldLearnState extends State<TextFieldLearn> {
  final key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const TextField(
        keyboardType: TextInputType.emailAddress,
        autofillHints: [AutofillHints.email],
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.mail),
          border: OutlineInputBorder(),
          labelText: 'Mail',
        ),
      ),
    );
  }
}
