import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:manage/common/repositories/media_repository.dart';
import 'package:manage/common/ui/colors.dart';
import 'package:manage/pages/file_add/view/file_add_page.dart';
import 'package:manage/pages/files/bloc/files_bloc.dart';
import 'package:manage/pages/files/view/files_view.dart';
import 'package:manage/pages/home/view/home_page.dart';

class FilesPage extends StatefulWidget {
  const FilesPage({Key? key}) : super(key: key);

  @override
  State<FilesPage> createState() => _FilesPageState();
}

class _FilesPageState extends State<FilesPage> {
  late FilesBloc filesBloc;

  @override
  void initState() {
    super.initState();

    filesBloc = FilesBloc(mediaRepository: context.read<MediaRepository>())
      ..add(const FilesEvent.started());
  }

  @override
  void dispose() {
    filesBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<FilesBloc>.value(
      value: filesBloc,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Файлы'),
          leading: IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
            },
            icon: const Icon(Icons.arrow_back),
          ),
        ),
        floatingActionButton: CircleAvatar(
          backgroundColor: AppColors.main,
          child: IconButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => const FileAddPage()));
              },
              icon: const Icon(
                Icons.add,
                color: AppColors.white,
              )),
        ),
        body: const FilesView(),
      ),
    );
  }
}
