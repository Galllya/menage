import 'package:json_annotation/json_annotation.dart';

part 'name_model.g.dart';

@JsonSerializable(createToJson: false)
class NameModel {
  final String? name;
  final String? url;

  NameModel({
    this.name,
    this.url,
  });

  factory NameModel.fromJson(Map<String, dynamic> json) => _$NameModelFromJson(json);
}
