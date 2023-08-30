import 'dart:typed_data';

import 'package:dio/dio.dart';

class ImageUploadService {
  final Dio dio;
  // https://firebasestorage.googleapis.com/v0/b/fluttertr-ead5c.appspot.com
  ImageUploadService(this.dio);
  // https://firebasestorage.googleapis.com/v0/b/{{image_server}}/o/full%2Fvb.png
  Future<void> uploadToImageServer(Uint8List byteArray, String name) async {
    dio.post('full%2F$name.png', data: byteArray, onSendProgress: (int sent, int total) {});
  }
}
