import 'package:json_annotation/json_annotation.dart';
import 'package:manage/domain/name_model.dart';

part 'data_model.g.dart';

@JsonSerializable(createToJson: false)
class DataModel {
  final int id;
  final NameModel? attributes;

  DataModel({
    required this.id,
    this.attributes,
  });

  factory DataModel.fromJson(Map<String, dynamic> json) => _$DataModelFromJson(json);
}
