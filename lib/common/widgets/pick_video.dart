import 'package:image_picker/image_picker.dart';

pickVideo(ImageSource source) async {
  final ImagePicker videoPicker = ImagePicker();

  XFile? file = await videoPicker.pickVideo(source: source);

  if (file != null) {
    return file;
  } else {}
}
