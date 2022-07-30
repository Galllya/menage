part of 'files_bloc.dart';

@freezed
class FilesEvent with _$FilesEvent {
  const factory FilesEvent.started() = _Started;
  const factory FilesEvent.load() = _load;
}
