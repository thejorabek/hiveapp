import 'package:hive_flutter/hive_flutter.dart';
import 'package:json_annotation/json_annotation.dart';

part 'source_model.g.dart';

@JsonSerializable()
@HiveType(typeId: 2)
class Source {
  @JsonKey(defaultValue: "", name: "id")
  @HiveField(0)
  String id;
  @JsonKey(defaultValue: "", name: "name")
  @HiveField(1)
  String name;

  Source({required this.id, required this.name});

  factory Source.fromJson(Map<String, dynamic> json) => _$SourceFromJson(json);
  Map<String, dynamic> toJson() => _$SourceToJson(this);
}