import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:manage/common/ui/colors.dart';
import 'package:manage/common/widgets/error_info_custom.dart';
import 'package:manage/common/widgets/loading_indicator_custom.dart';
import 'package:manage/common/widgets/pick_audio.dart';
import 'package:manage/common/widgets/pick_image.dart';
import 'package:manage/common/widgets/pick_video.dart';
import 'package:manage/domain/file_load_model.dart';
import 'package:manage/pages/file_add/bloc/file_add_bloc.dart';
import 'package:manage/common/widgets/video_contaiener.dart';
import 'package:manage/pages/file_detail/widgets/audio_container.dart';

class FileAddView extends StatefulWidget {
  final Function({required FileLoadModel fileModel}) onSave;
  const FileAddView({
    Key? key,
    required this.onSave,
  }) : super(key: key);

  @override
  State<FileAddView> createState() => _FileAddViewState();
}

class _FileAddViewState extends State<FileAddView> {
  TypeRus? selectType;
  Uint8List? image;
  File? video;
  File? audio;

  void selectImage() async {
    Uint8List im = await pickImage(ImageSource.gallery);
    setState(() {
      image = im;
    });
  }

  void selectVideo() async {
    XFile im = await pickVideo(ImageSource.gallery);

    File fileVid = File(im.path);
    setState(() {
      video = fileVid;
    });
  }

  void selectAudio() async {
    File file = await pickAudio(ImageSource.gallery);
    setState(() {
      audio = file;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FileAddBloc, FileAddState>(
      builder: (BuildContext context, FileAddState state) {
        return state.maybeWhen(
          orElse: () {
            return const SizedBox();
          },
          loading: () {
            return const LoadingIndicatorCustom();
          },
          error: () {
            return const ErrorInfoCustom();
          },
          loaded: (types) {
            List<TypeRus> allTypes = [];
            for (var element in types) {
              String rus = '';
              switch (element.attributes!.code!) {
                case 'image':
                  rus = "изображение";
                  break;
                case 'music':
                  rus = "аудио";
                  break;
                case 'gif':
                  rus = "гиф";
                  break;
                case 'video':
                  rus = "видео";
                  break;
                default:
              }
              allTypes.add(TypeRus(type: element.attributes!.code!, rus: rus));
            }
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: DropdownButton(
                      hint: selectType == null
                          ? const Text('Выберите тип')
                          : Text(
                              selectType!.rus,
                              style: const TextStyle(color: AppColors.main),
                            ),
                      isExpanded: true,
                      iconSize: 30.0,
                      style: const TextStyle(color: AppColors.black),
                      items: allTypes.map(
                        (val) {
                          return DropdownMenuItem<String>(
                            value: val.rus,
                            child: Text(val.rus),
                          );
                        },
                      ).toList(),
                      onChanged: (String? val) {
                        setState(
                          () {
                            selectType = allTypes.where((element) => element.rus == val!).first;
                            image = null;
                            video = null;
                            audio = null;
                          },
                        );
                      },
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        selectType != null &&
                                (selectType!.type == "image" || selectType!.type == "gif")
                            ? image != null
                                ? SizedBox(height: 400, child: Image(image: MemoryImage(image!)))
                                : const SizedBox()
                            : selectType != null && selectType!.type == "video" && video != null
                                ? SizedBox(height: 400, child: VideoContainer(videoFile: video!))
                                : selectType != null && selectType!.type == "music" && audio != null
                                    ? SizedBox(
                                        height: 400, child: AudioContainer(audioFile: audio!))
                                    : const SizedBox(),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ElevatedButton(
                                onPressed: selectType == null
                                    ? null
                                    : () {
                                        switch (selectType!.type) {
                                          case "image":
                                            selectImage();

                                            break;
                                          case "gif":
                                            selectImage();
                                            break;
                                          case "video":
                                            selectVideo();
                                            break;
                                          case "music":
                                            selectAudio();
                                            break;
                                          default:
                                        }
                                      },
                                style: ElevatedButton.styleFrom(
                                  primary: AppColors.main,
                                ),
                                child: selectType == null
                                    ? const Text('Выбрать ...')
                                    : Text('Выбрать  ${selectType!.rus}'),
                              ),
                              ElevatedButton(
                                onPressed: image == null && video == null && audio == null
                                    ? null
                                    : () {
                                        widget.onSave(
                                            fileModel: FileLoadModel(
                                                files: File.fromRawPath(image!).path));
                                      },
                                style: ElevatedButton.styleFrom(
                                  primary: AppColors.main,
                                ),
                                child: const Text('ОТПРАВИТЬ'),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            );
          },
        );
      },
    );
  }
}

class TypeRus {
  final String type;
  final String rus;

  TypeRus({required this.type, required this.rus});
}
