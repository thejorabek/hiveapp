import 'package:hiveapp/model/articles_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'new_model.g.dart';

@JsonSerializable()
class NewModel {
  @JsonKey(defaultValue: "", name: "status")
  String status;
  @JsonKey(defaultValue: 0, name: "totalResults")
  int totalResults;
  @JsonKey(name: "articles")
  List<Articles> articles;

  NewModel(
      {required this.status,
      required this.totalResults,
      required this.articles});

      factory NewModel.fromJson(Map<String, dynamic> json) => _$NewModelFromJson(json);
  Map<String, dynamic> toJson() => _$NewModelToJson(this);
}