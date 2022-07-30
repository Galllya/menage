part of 'file_add_bloc.dart';

@freezed
class FileAddEvent with _$FileAddEvent {
  const factory FileAddEvent.started() = _Started;
  const factory FileAddEvent.load() = _load;
  const factory FileAddEvent.addFile(FileLoadModel fileModel) = _AddFile;
}
