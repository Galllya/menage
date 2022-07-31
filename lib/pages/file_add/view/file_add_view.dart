import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:manage/common/ui/colors.dart';
import 'package:manage/common/widgets/error_info_custom.dart';
import 'package:manage/common/widgets/loading_indicator_custom.dart';
import 'package:manage/common/widgets/pick_file.dart';
import 'package:manage/common/widgets/snack_bar_custom.dart';
import 'package:manage/pages/file_add/bloc/file_add_bloc.dart';
import 'package:manage/common/widgets/video_contaiener.dart';
import 'package:manage/pages/file_detail/widgets/audio_container.dart';
import 'package:manage/pages/files/view/files_page.dart';

class FileAddView extends StatefulWidget {
  final Function({required File fileModel, required int type, required String typeForFile}) onSave;
  const FileAddView({
    Key? key,
    required this.onSave,
  }) : super(key: key);

  @override
  State<FileAddView> createState() => _FileAddViewState();
}

class _FileAddViewState extends State<FileAddView> {
  TypeRus? selectType;
  File? fileSelect;

  void selectFile() async {
    File file = await pickFileCustom(type: selectType!.type);
    setState(() {
      fileSelect = file;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<FileAddBloc, FileAddState>(
        listener: (BuildContext context, FileAddState state) {
      state.maybeWhen(
        orElse: () {},
        errorAdd: () {
          CustomScaffoldMessages().show(
            title: 'Произошла ошибка при отрравки',
          );
        },
        successAdd: () {
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (BuildContext context) => const FilesPage()));
        },
      );
    }, child: BlocBuilder<FileAddBloc, FileAddState>(
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
          processingAdd: () {
            return const LoadingIndicatorCustom();
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
                            fileSelect = null;
                          },
                        );
                      },
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        fileSelect != null
                            ? SizedBox(
                                height: 400,
                                child: (selectType!.type == "image" || selectType!.type == "gif")
                                    ? Image(image: MemoryImage(fileSelect!.readAsBytesSync()))
                                    : selectType!.type == "video"
                                        ? VideoContainer(videoFile: fileSelect!)
                                        : selectType!.type == "music"
                                            ? AudioContainer(audioFile: fileSelect!)
                                            : const SizedBox())
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
                                        selectFile();
                                      },
                                style: ElevatedButton.styleFrom(
                                  primary: AppColors.main,
                                ),
                                child: selectType == null
                                    ? const Text('Выбрать ...')
                                    : Text('Выбрать  ${selectType!.rus}'),
                              ),
                              ElevatedButton(
                                onPressed: fileSelect == null
                                    ? null
                                    : () {
                                        widget.onSave(
                                            fileModel: fileSelect!,
                                            typeForFile: selectType!.type,
                                            type: types
                                                .where((element) =>
                                                    element.attributes!.code == selectType!.type)
                                                .first
                                                .id);
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
    ));
  }
}

class TypeRus {
  final String type;
  final String rus;

  TypeRus({required this.type, required this.rus});
}
