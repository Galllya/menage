import 'package:json_annotation/json_annotation.dart';

part 'load_file_model.g.dart';

@JsonSerializable(createToJson: false)
class LoadFileModel {
  final String? url;
  final int id;

  LoadFileModel({
    this.url,
    required this.id,
  });

  factory LoadFileModel.fromJson(Map<String, dynamic> json) => _$LoadFileModelFromJson(json);
}
