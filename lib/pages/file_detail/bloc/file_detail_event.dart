part of 'file_detail_bloc.dart';

@freezed
class FileDetailEvent with _$FileDetailEvent {
  const factory FileDetailEvent.started() = _Started;
}