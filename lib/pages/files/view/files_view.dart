import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:manage/common/widgets/error_info_custom.dart';
import 'package:manage/common/widgets/loading_indicator_custom.dart';
import 'package:manage/pages/files/bloc/files_bloc.dart';
import 'package:manage/pages/files/widgets/file_container.dart';

class FilesView extends StatelessWidget {
  const FilesView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FilesBloc, FilesState>(
      builder: (BuildContext context, FilesState state) {
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
          loaded: (files) {
            return ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              children: [
                const SizedBox(
                  height: 10,
                ),
                ...files.map(
                  (e) => Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: FileContainer(
                        id: e.id,
                        code: e.attributes!.type!.data!.attributes!.code!,
                        url: e.attributes!.media!.data!.first.attributes!.url!),
                  ),
                )
              ],
            );
          },
        );
      },
    );
  }
}
