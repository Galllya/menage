part of 'text_bloc.dart';

@freezed
class TextEvent with _$TextEvent {
  const factory TextEvent.started() = _Started;
  const factory TextEvent.load() = _load;
}
