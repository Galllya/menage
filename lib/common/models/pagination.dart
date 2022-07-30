import 'package:json_annotation/json_annotation.dart';

part 'pagination.g.dart';

@JsonSerializable(createToJson: false, genericArgumentFactories: true)
class Pagination<T> {
  final List<T> data;
  final T meta;

  Pagination(this.data, this.meta);

  factory Pagination.fromJson(Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$PaginationFromJson(json, fromJsonT);
}
