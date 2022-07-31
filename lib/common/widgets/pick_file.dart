import 'dart:io';

import 'package:file_picker/file_picker.dart';

pickFileCustom({required String type}) async {
  FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: type == "image" || type == "gif"
          ? FileType.image
          : type == "video"
              ? FileType.video
              : type == "music"
                  ? FileType.audio
                  : FileType.any);

  if (result != null) {
    File file = File(result.files.single.path!);
    return file;
  } else {}
}
