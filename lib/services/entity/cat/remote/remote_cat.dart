// ignore_for_file: invalid_annotation_target

import 'package:json_annotation/json_annotation.dart';

part 'remote_cat.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class RemoteCat {
  final String id;
  final String name;
  final String origin;
  RemoteCat({
    required this.id,
    required this.name,
    required this.origin,
  });

  factory RemoteCat.fromJson(Map<String, dynamic> json) =>
      _$RemoteCatFromJson(json);
}
