part of 'all_text_bloc.dart';

@freezed
class AllTextEvent with _$AllTextEvent {
  const factory AllTextEvent.started() = _Started;
  const factory AllTextEvent.startDelete() = _startDelete;
  const factory AllTextEvent.startUpdate(
    Map<String, dynamic> text,
  ) = _startUpdate;
}
