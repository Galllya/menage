import 'package:json_annotation/json_annotation.dart';
import 'package:manage/domain/file_model.dart';

part 'base_file.g.dart';

@JsonSerializable(createToJson: false)
class BaseFileModel {
  final FileModel? attributes;
  final int id;

  BaseFileModel({
    this.attributes,
    required this.id,
  });

  factory BaseFileModel.fromJson(Map<String, dynamic> json) => _$BaseFileModelFromJson(json);
}
