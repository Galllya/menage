import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manage/common/repositories/text_repository.dart';
import 'package:manage/domain/text_model.dart';

part 'add_text_event.dart';
part 'add_text_state.dart';
part 'add_text_bloc.freezed.dart';

class AddTextBloc extends Bloc<AddTextEvent, AddTextState> {
  final TextRepository textRepository;
  AddTextBloc({
    required this.textRepository,
  }) : super(const _Initial());
  @override
  Stream<AddTextState> mapEventToState(
    AddTextEvent event,
  ) =>
      event.when(started: _started, post: _post);

  Stream<AddTextState> _started() async* {
    yield const AddTextState.initial();
  }

  Stream<AddTextState> _post(
    Map<String, dynamic> text,
  ) async* {
    yield const AddTextState.processing();

    yield* state.maybeWhen(
      processing: () async* {
        try {
          await textRepository.addText(textModel: TextModel.fromJson(text));
          yield const AddTextState.success();
        } on DioError catch (e) {
          yield const AddTextState.error();
        }
      },
      orElse: () => Stream.value(state),
    );
  }
}
