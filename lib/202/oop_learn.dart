import 'dart:io';

import 'package:flutter_full_learn/202/custom_exception.dart';

abstract class IFileDownload {
  bool? downloadItem(FileItem? fileItem);
}

class FileDownload implements IFileDownload {
  @override
  bool? downloadItem(FileItem? fileItem) {
    if (fileItem == null) throw FileDownloadException();

    print('d');
    return true;
  }
}

class FileItem {
  final String name;
  final File file;

  FileItem(this.name, this.file);
}
