// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseTextModel _$BaseTextModelFromJson(Map<String, dynamic> json) =>
    BaseTextModel(
      attributes: json['attributes'] == null
          ? null
          : TextModel.fromJson(json['attributes'] as Map<String, dynamic>),
      id: json['id'] as int,
    );
