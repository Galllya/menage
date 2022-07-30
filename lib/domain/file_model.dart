import 'package:json_annotation/json_annotation.dart';
import 'package:manage/domain/media_model.dart';
import 'package:manage/domain/type_model.dart';

part 'file_model.g.dart';

@JsonSerializable(createToJson: false)
class FileModel {
  final MediaModel? media;
  final TypeModel? type;

  FileModel({
    this.media,
    this.type,
  });

  factory FileModel.fromJson(Map<String, dynamic> json) => _$FileModelFromJson(json);
}
