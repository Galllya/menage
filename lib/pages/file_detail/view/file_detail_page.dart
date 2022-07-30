import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:manage/pages/file_detail/bloc/file_detail_bloc.dart';
import 'package:manage/pages/file_detail/view/file_detail_view.dart';

class FileDetailPage extends StatefulWidget {
  final String title;
  final String code;
  final String url;
  const FileDetailPage({
    Key? key,
    required this.title,
    required this.code,
    required this.url,
  }) : super(key: key);

  @override
  State<FileDetailPage> createState() => _FileDetailPageState();
}

class _FileDetailPageState extends State<FileDetailPage> {
  late FileDetailBloc fileDetailBloc;

  @override
  void initState() {
    super.initState();

    fileDetailBloc = FileDetailBloc();
  }

  @override
  void dispose() {
    fileDetailBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<FileDetailBloc>.value(
      value: fileDetailBloc,
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: FileDetailView(
          code: widget.code,
          url: widget.url,
        ),
      ),
    );
  }
}
