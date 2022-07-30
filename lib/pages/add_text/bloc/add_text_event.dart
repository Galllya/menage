part of 'add_text_bloc.dart';

@freezed
class AddTextEvent with _$AddTextEvent {
  const factory AddTextEvent.started() = _Started;
  const factory AddTextEvent.post(Map<String, dynamic> text) = _Post;
}
