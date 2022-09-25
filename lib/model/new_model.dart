import 'package:hiveapp/model/articles_model.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'new_model.g.dart';

@JsonSerializable()
@HiveType(typeId: 0)
class NewModel {
  @JsonKey(defaultValue: "", name: "status")
  @HiveField(0)
  String status;
  @JsonKey(defaultValue: 0, name: "totalResults")
  @HiveField(1)
  int totalResults;
  @JsonKey(name: "articles")
  @HiveField(2)
  List<Articles> articles;

  NewModel({required this.status, required this.totalResults, required this.articles});

  factory NewModel.fromJson(Map<String, dynamic> json) => _$NewModelFromJson(json);
  Map<String, dynamic> toJson() => _$NewModelToJson(this);
}
