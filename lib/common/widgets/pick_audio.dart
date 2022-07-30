import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:image_picker/image_picker.dart';

pickAudio(ImageSource source) async {
  PlatformFile? file;
  FilePickerResult? result = await FilePicker.platform.pickFiles(type: FileType.audio);
  if (result == null) return;
  file = result.files.first;

  File filePick = File(file.path!);
  return filePick;
}
