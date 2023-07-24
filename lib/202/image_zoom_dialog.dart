import 'package:flutter/material.dart';

class ImageZoomDialog extends StatefulWidget {
  const ImageZoomDialog({super.key});

  @override
  State<ImageZoomDialog> createState() => _ImageZoomDialogState();
}

class _ImageZoomDialogState extends State<ImageZoomDialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppBarText.titleText),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          showDialog(
              context: context,
              builder: (context) {
                return _ImageDialog();
              });
        },
      ),
    );
  }
}

class AppBarText {
  static const titleText = 'yusufhan.dev';
  static const url = 'https://picsum.photos/200';
}

class _ImageDialog extends StatelessWidget {
  const _ImageDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.zero,
      child: InteractiveViewer(
        child: Image.network(
          AppBarText.url,
          fit: BoxFit.cover,
          height: MediaQuery.of(context).size.height * 0.6,
        ),
      ),
    );
  }
}
