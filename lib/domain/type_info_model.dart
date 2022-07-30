import 'package:json_annotation/json_annotation.dart';

part 'type_info_model.g.dart';

@JsonSerializable(createToJson: false)
class InfoTypeModel {
  final String? code;

  InfoTypeModel({
    this.code,
  });

  factory InfoTypeModel.fromJson(Map<String, dynamic> json) => _$InfoTypeModelFromJson(json);
}
