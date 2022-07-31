import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:manage/common/repositories/media_repository.dart';
import 'package:manage/common/repositories/type_repository.dart';
import 'package:manage/pages/file_add/bloc/file_add_bloc.dart';
import 'package:manage/pages/file_add/view/file_add_view.dart';

class FileAddPage extends StatefulWidget {
  const FileAddPage({Key? key}) : super(key: key);

  @override
  State<FileAddPage> createState() => _FileAddPageState();
}

class _FileAddPageState extends State<FileAddPage> {
  late FileAddBloc fileAddBloc;

  @override
  void initState() {
    super.initState();

    fileAddBloc = FileAddBloc(
        typeRepository: context.read<TypeRepository>(),
        mediaRepository: context.read<MediaRepository>())
      ..add(const FileAddEvent.started());
  }

  @override
  void dispose() {
    fileAddBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<FileAddBloc>.value(
      value: fileAddBloc,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Добавить файл'),
        ),
        body: FileAddView(
          onSave: ({
            required File fileModel,
            required int type,
            required String typeForFile,
          }) {
            fileAddBloc.add(FileAddEvent.addFile(fileModel, type, typeForFile));
          },
        ),
      ),
    );
  }
}
