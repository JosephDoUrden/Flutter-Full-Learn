import 'package:flutter/material.dart';

class ImageLearn202 extends StatefulWidget {
  const ImageLearn202({super.key});

  @override
  State<ImageLearn202> createState() => _ImageLearn202State();
}

class _ImageLearn202State extends State<ImageLearn202> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('yusufhan.dev'),
      ),
      body: ImagePaths.image_collection_demo.toWidget(),
    );
  }
}

enum ImagePaths { image_collection_demo }

extension ImagePathsExtension on ImagePaths {
  String path() {
    return 'assets/png/$name.png';
  }

  String pathJpeg() {
    return 'assets/png/$name.jpeg';
  }

  Widget toWidget() {
    return Image.asset(pathJpeg());
  }
}
