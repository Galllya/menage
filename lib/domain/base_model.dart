import 'package:json_annotation/json_annotation.dart';
import 'package:manage/domain/text_model.dart';

part 'base_model.g.dart';

@JsonSerializable(createToJson: false)
class BaseTextModel {
  final TextModel? attributes;
  final int id;

  BaseTextModel({
    this.attributes,
    required this.id,
  });

  factory BaseTextModel.fromJson(Map<String, dynamic> json) => _$BaseTextModelFromJson(json);
}
