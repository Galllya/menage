part of 'add_text_bloc.dart';

@freezed
class AddTextState with _$AddTextState {
  const factory AddTextState.initial() = _Initial;
  const factory AddTextState.success() = _Success;
  const factory AddTextState.processing() = _Processing;
  const factory AddTextState.error() = _Error;
}
