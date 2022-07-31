import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:manage/common/widgets/loading_indicator_custom.dart';
import 'package:manage/common/widgets/snack_bar_custom.dart';
import 'package:manage/common/widgets/video_contaiener.dart';
import 'package:manage/main.dart';
import 'package:manage/pages/file_detail/bloc/file_detail_bloc.dart';
import 'package:manage/pages/file_detail/widgets/audio_container.dart';
import 'package:manage/pages/files/view/files_page.dart';

class FileDetailView extends StatefulWidget {
  final String code;
  final String url;
  const FileDetailView({
    Key? key,
    required this.code,
    required this.url,
  }) : super(key: key);

  @override
  State<FileDetailView> createState() => _FileDetailViewState();
}

class _FileDetailViewState extends State<FileDetailView> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<FileDetailBloc, FileDetailState>(
        listener: (BuildContext context, FileDetailState state) {
      state.maybeWhen(
        orElse: () {},
        error: () {
          CustomScaffoldMessages().show(
            title: 'Произошла ошибка при отрравки',
          );
        },
        success: () {
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (BuildContext context) => const FilesPage()));
        },
      );
    }, child: BlocBuilder<FileDetailBloc, FileDetailState>(
      builder: (BuildContext context, FileDetailState state) {
        return state.maybeWhen(orElse: () {
          return widget.code == "image" || widget.code == "gif"
              ? Center(child: Image(image: NetworkImage("$apiFile${widget.url}")))
              : widget.code == "video"
                  ? VideoContainer(videoUrl: "$apiFile${widget.url}")
                  : widget.code == "music"
                      ? AudioContainer(
                          url: widget.url,
                        )
                      : const SizedBox();
        }, processing: () {
          return const LoadingIndicatorCustom();
        });
      },
    ));
  }
}
