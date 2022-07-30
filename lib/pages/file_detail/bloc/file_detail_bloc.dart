import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'file_detail_event.dart';
part 'file_detail_state.dart';
part 'file_detail_bloc.freezed.dart';

class FileDetailBloc extends Bloc<FileDetailEvent, FileDetailState> {
  FileDetailBloc() : super(_Initial());
}
