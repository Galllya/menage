import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manage/common/repositories/media_repository.dart';

part 'file_detail_event.dart';
part 'file_detail_state.dart';
part 'file_detail_bloc.freezed.dart';

class FileDetailBloc extends Bloc<FileDetailEvent, FileDetailState> {
  final MediaRepository mediaRepository;
  FileDetailBloc({
    required this.mediaRepository,
  }) : super(const _Initial());
  @override
  Stream<FileDetailState> mapEventToState(
    FileDetailEvent event,
  ) =>
      event.when(started: _started, delete: _delete);

  Stream<FileDetailState> _started() async* {
    yield const FileDetailState.initial();
  }

  Stream<FileDetailState> _delete(int id) async* {
    yield const FileDetailState.processing();

    yield* state.maybeWhen(
      processing: () async* {
        try {
          await mediaRepository.deleteFile(id: id);
          yield const FileDetailState.success();
        } on DioError catch (e) {
          yield const FileDetailState.error();
        }
      },
      orElse: () => Stream.value(state),
    );
  }
}
