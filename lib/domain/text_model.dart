import 'package:json_annotation/json_annotation.dart';

part 'text_model.g.dart';

@JsonSerializable(createToJson: true)
class TextModel {
  final String? text;

  TextModel({
    this.text,
  });
  Map<String, dynamic> toJson() => _$TextModelToJson(this);
  factory TextModel.fromJson(Map<String, dynamic> json) => _$TextModelFromJson(json);
}
