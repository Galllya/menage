import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:manage/common/widgets/video_contaiener.dart';
import 'package:manage/pages/file_detail/bloc/file_detail_bloc.dart';
import 'package:manage/pages/file_detail/widgets/audio_container.dart';

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
    return BlocBuilder<FileDetailBloc, FileDetailState>(
      builder: (BuildContext context, FileDetailState state) {
        return widget.code == "image" || widget.code == "gif"
            ? Center(child: Image(image: NetworkImage("http://10.0.2.2:1337${widget.url}")))
            : widget.code == "video"
                ? VideoContainer(videoUrl: "http://10.0.2.2:1337${widget.url}")
                : widget.code == "music"
                    ? AudioContainer(
                        url: widget.url,
                      )
                    : const SizedBox();
      },
    );
  }
}
