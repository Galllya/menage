part of 'files_bloc.dart';

@freezed
class FilesState with _$FilesState {
  const factory FilesState.initial() = _Initial;
  const factory FilesState.loaded({
    required List<BaseFileModel> files,
  }) = _Loaded;
  const factory FilesState.loading() = _Loading;
  const factory FilesState.error() = _Error;
}
