import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manage/common/repositories/media_repository.dart';
import 'package:manage/domain/base_file.dart';

part 'files_event.dart';
part 'files_state.dart';
part 'files_bloc.freezed.dart';

class FilesBloc extends Bloc<FilesEvent, FilesState> {
  final MediaRepository mediaRepository;
  FilesBloc({
    required this.mediaRepository,
  }) : super(_Initial());
  @override
  Stream<FilesState> mapEventToState(
    FilesEvent event,
  ) =>
      event.when(
        started: _started,
        load: _load,
      );

  Stream<FilesState> _started() async* {
    yield const FilesState.initial();
    yield* _load();
  }

  Stream<FilesState> _load() async* {
    yield* state.maybeMap(
      initial: (initialState) async* {
        yield const FilesState.loading();
        try {
          final files = await mediaRepository.loadFiles();
          yield FilesState.loaded(files: files.data);
        } on DioError catch (e) {
          yield const FilesState.error();
        }
      },
      orElse: () => Stream.value(state),
    );
  }
}
