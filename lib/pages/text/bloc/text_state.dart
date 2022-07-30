part of 'text_bloc.dart';

@freezed
class TextState with _$TextState {
  const factory TextState.initial() = _Initial;
  const factory TextState.loaded({
    required List<BaseTextModel> texts,
  }) = _Loaded;
  const factory TextState.loading() = _Loading;
  const factory TextState.error() = _Error;
}
