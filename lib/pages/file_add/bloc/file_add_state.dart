part of 'file_add_bloc.dart';

@freezed
class FileAddState with _$FileAddState {
  const factory FileAddState.initial() = _Initial;
  const factory FileAddState.loaded({
    required List<InfoDataTypeModel> types,
  }) = _Loaded;
  const factory FileAddState.loading() = _Loading;
  const factory FileAddState.error() = _Error;
  const factory FileAddState.successAdd() = _SuccessAdd;
  const factory FileAddState.processingAdd() = _ProcessingAdd;
  const factory FileAddState.errorAdd() = _ErrorAdd;
}
