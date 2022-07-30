import 'package:json_annotation/json_annotation.dart';

part 'chat_model.g.dart';

@JsonSerializable(createToJson: true)
class ChatModel {
  final String message;
  final String user;

  ChatModel({
    required this.message,
    required this.user,
  });
  Map<String, dynamic> toJson() => _$ChatModelToJson(this);
  factory ChatModel.fromJson(Map<String, dynamic> json) => _$ChatModelFromJson(json);
}
