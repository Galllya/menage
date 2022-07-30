import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manage/common/repositories/text_repository.dart';
import 'package:manage/domain/text_model.dart';

part 'all_text_event.dart';
part 'all_text_state.dart';
part 'all_text_bloc.freezed.dart';

class AllTextBloc extends Bloc<AllTextEvent, AllTextState> {
  final TextRepository textRepository;
  final int id;
  AllTextBloc({
    required this.textRepository,
    required this.id,
  }) : super(const _Initial());
  @override
  Stream<AllTextState> mapEventToState(
    AllTextEvent event,
  ) =>
      event.when(started: _started, startDelete: _startDelete, startUpdate: _startUpdate);

  Stream<AllTextState> _started() async* {
    yield const AllTextState.initial();
  }

  Stream<AllTextState> _startDelete() async* {
    yield const AllTextState.processingDelete();

    yield* state.maybeWhen(
      processingDelete: () async* {
        try {
          await textRepository.deleteText(id: id);
          yield const AllTextState.successDelete();
        } on DioError catch (e) {
          yield const AllTextState.errorDelete();
        }
      },
      orElse: () => Stream.value(state),
    );
  }

  Stream<AllTextState> _startUpdate(
    Map<String, dynamic> text,
  ) async* {
    yield const AllTextState.processingUpdate();

    yield* state.maybeWhen(
      processingUpdate: () async* {
        try {
          await textRepository.updateText(textModel: TextModel.fromJson(text), id: id);
          yield const AllTextState.successUpdate();
        } on DioError catch (e) {
          yield const AllTextState.errorUpdate();
        }
      },
      orElse: () => Stream.value(state),
    );
  }
}
