import 'package:flutter/material.dart';

class CustomWidgetLearn extends StatelessWidget {
  const CustomWidgetLearn({super.key});
  final String title = 'Food';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Padding(
              padding: _PaddingUtility().horizontalPadding,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: CustomFootButton(text: title, onPressed: () {}),
              ),
            ),
          ),
          const SizedBox(height: 50),
          Padding(
            padding: _PaddingUtility().horizontalPadding,
            child: CustomFootButton(text: title, onPressed: () {}),
          ),
        ],
      ),
    );
  }
}

class CustomFootButton extends StatelessWidget
    with _ColorsUtility, _PaddingUtility {
  CustomFootButton({super.key, required this.text, required this.onPressed});
  final text;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: redColor,
          shape: const StadiumBorder(),
        ),
        onPressed: () {},
        child: Padding(
          padding: buttonPadding,
          child: Text(
            text,
            style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  color: whiteColor,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ));
  }
}

class _ColorsUtility {
  final Color redColor = Colors.red;
  final Color whiteColor = Colors.white;
}

class _PaddingUtility {
  final EdgeInsets buttonPadding = EdgeInsets.all(10);
  final EdgeInsets horizontalPadding = EdgeInsets.symmetric(horizontal: 20);
}
