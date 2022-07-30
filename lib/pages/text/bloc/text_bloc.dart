import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manage/common/repositories/text_repository.dart';
import 'package:manage/domain/base_model.dart';

part 'text_event.dart';
part 'text_state.dart';
part 'text_bloc.freezed.dart';

class TextBloc extends Bloc<TextEvent, TextState> {
  final TextRepository textRepository;
  TextBloc({
    required this.textRepository,
  }) : super(const _Initial());
  @override
  Stream<TextState> mapEventToState(
    TextEvent event,
  ) =>
      event.when(
        started: _started,
        load: _load,
      );

  Stream<TextState> _started() async* {
    yield const TextState.initial();
    yield* _load();
  }

  Stream<TextState> _load() async* {
    yield* state.maybeMap(
      initial: (initialState) async* {
        yield const TextState.loading();
        try {
          final texts = await textRepository.loadTexts();
          yield TextState.loaded(
            texts: texts.data,
          );
        } on DioError catch (e) {
          yield const TextState.error();
        }
      },
      orElse: () => Stream.value(state),
    );
  }
}
