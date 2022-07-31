// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_type_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MediaTypeModel _$MediaTypeModelFromJson(Map<String, dynamic> json) =>
    MediaTypeModel(
      mappedBy: json['mappedBy'] as String,
      relation: json['relation'] as String,
      target: json['target'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$MediaTypeModelToJson(MediaTypeModel instance) =>
    <String, dynamic>{
      'type': instance.type,
      'relation': instance.relation,
      'target': instance.target,
      'mappedBy': instance.mappedBy,
    };
