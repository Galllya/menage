part of 'all_text_bloc.dart';

@freezed
class AllTextState with _$AllTextState {
  const factory AllTextState.initial() = _Initial;
  const factory AllTextState.successDelete() = _SuccessDelete;
  const factory AllTextState.processingDelete() = _ProcessingDelete;
  const factory AllTextState.errorDelete() = _ErrorDelete;
  const factory AllTextState.successUpdate() = _SuccessUpdate;
  const factory AllTextState.processingUpdate() = _ProcessingUpdate;
  const factory AllTextState.errorUpdate() = _ErrorUpdate;
}
