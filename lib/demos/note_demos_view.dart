import 'package:flutter/material.dart';
import 'package:flutter_full_learn/101/image_learn.dart';

class NoteDemos extends StatelessWidget {
  const NoteDemos({super.key});
  final _title = 'Create your first note';
  final _description = 'Add a note';
  final _createNote = 'Create a note';
  final _importNotes = 'Import Notes';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(),
      body: Padding(
        padding: PaddingItems().horizontalPadding,
        child: Column(
          children: [
            PngImage(path: ImageItems().appleWithBook),
            _TitleWidget(title: _title),
            Padding(
              padding: PaddingItems().verticalPadding,
              child: _SubtitleWidget(text: _description * 10),
            ),
            const Spacer(),
            _createButton(createNote: _createNote),
            TextButton(onPressed: () {}, child: Text(_importNotes)),
            SizedBox(height: ButtonHeights().buttonNormalHeight),
          ],
        ),
      ),
    );
  }
}

class _createButton extends StatelessWidget {
  const _createButton({
    required String createNote,
  }) : _createNote = createNote;

  final String _createNote;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: SizedBox(
        height: ButtonHeights().buttonNormalHeight,
        child: Center(
          child: Text(
            _createNote,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
      ),
    );
  }
}

//Center text widget
class _SubtitleWidget extends StatelessWidget {
  const _SubtitleWidget({required this.text, this.textAlign});
  final TextAlign? textAlign;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.titleMedium?.copyWith(
            color: Colors.black,
            fontWeight: FontWeight.w400,
          ),
    );
  }
}

class _TitleWidget extends StatelessWidget {
  const _TitleWidget({
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
            color: Colors.black,
            fontWeight: FontWeight.w800,
          ),
    );
  }
}

class PaddingItems {
  final EdgeInsets horizontalPadding = const EdgeInsets.symmetric(horizontal: 20);
  final EdgeInsets verticalPadding = const EdgeInsets.symmetric(vertical: 10);
}

class ButtonHeights {
  final double buttonNormalHeight = 50;
}
