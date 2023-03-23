import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            height: 200,
            width: 200,
            child: PngImage(path: ImageItems().appleWithBook),
          ),
        ],
      ),
    );
  }
}

class ImageItems {
  final String appleWithBook = "assets/png/2997528.png";
  final String appleBookWithoutPath = "2997528";
}

class PngImage extends StatelessWidget {
  const PngImage({Key? key, required this.path}) : super(key: key);
  final String path;
  @override
  Widget build(BuildContext context) {
    return Image.asset(path, fit: BoxFit.cover);
  }
}
