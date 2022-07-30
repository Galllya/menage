import 'package:json_annotation/json_annotation.dart';

part 'file_load_model.g.dart';

@JsonSerializable(createToJson: true)
class FileLoadModel {
  final String? files;

  FileLoadModel({
    this.files,
  });
  Map<String, dynamic> toJson() => _$FileLoadModelToJson(this);

  factory FileLoadModel.fromJson(Map<String, dynamic> json) => _$FileLoadModelFromJson(json);
}
