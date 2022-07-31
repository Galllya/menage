part of 'file_detail_bloc.dart';

@freezed
class FileDetailState with _$FileDetailState {
  const factory FileDetailState.initial() = _Initial;
  const factory FileDetailState.success() = _Success;
  const factory FileDetailState.processing() = _Processing;
  const factory FileDetailState.error() = _Error;
}
