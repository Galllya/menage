import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manage/common/repositories/media_repository.dart';
import 'package:manage/common/repositories/type_repository.dart';
import 'package:manage/domain/info_data_type_model.dart';
import 'package:manage/domain/media_file_model.dart';

part 'file_add_event.dart';
part 'file_add_state.dart';
part 'file_add_bloc.freezed.dart';

class FileAddBloc extends Bloc<FileAddEvent, FileAddState> {
  final TypeRepository typeRepository;
  final MediaRepository mediaRepository;
  FileAddBloc({
    required this.typeRepository,
    required this.mediaRepository,
  }) : super(const _Initial());
  @override
  Stream<FileAddState> mapEventToState(
    FileAddEvent event,
  ) =>
      event.when(
        started: _started,
        load: _load,
        addFile: _addFile,
      );

  Stream<FileAddState> _started() async* {
    yield const FileAddState.initial();
    yield* _load();
  }

  Stream<FileAddState> _load() async* {
    yield* state.maybeMap(
      initial: (initialState) async* {
        yield const FileAddState.loading();
        try {
          final types = await typeRepository.loadFiles();
          yield FileAddState.loaded(types: types.data);
        } on DioError catch (e) {
          yield const FileAddState.error();
        }
      },
      orElse: () => Stream.value(state),
    );
  }

  Stream<FileAddState> _addFile(
    File file,
    int type,
    String typeForFile,
  ) async* {
    yield const FileAddState.processingAdd();

    yield* state.maybeWhen(
      processingAdd: () async* {
        try {
          final fileModel = await mediaRepository.addFile(file: file, type: typeForFile);
          await mediaRepository.postMediaFiles(
            mediaFileModel: MediaFileModel(
              media: fileModel.first.id.toString(),
              type: type,
            ),
          );
          yield const FileAddState.successAdd();
        } on DioError catch (e) {
          yield const FileAddState.errorAdd();
        }
      },
      orElse: () => Stream.value(state),
    );
  }
}
