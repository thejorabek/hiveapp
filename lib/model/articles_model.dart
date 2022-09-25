import 'package:hive_flutter/hive_flutter.dart';
import 'package:hiveapp/model/source_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'articles_model.g.dart';

@JsonSerializable()
@HiveType(typeId: 1)
class Articles {
  @JsonKey(name: "source")
  @HiveField(0)
  Source source;
  @JsonKey(defaultValue: "", name: "author")
  @HiveField(1)
  String author;
  @JsonKey(defaultValue: "", name: "title")
  @HiveField(2)
  String title;
  @JsonKey(defaultValue: "", name: "description")
  @HiveField(3)
  String description;
  @JsonKey(defaultValue: "", name: "url")
  @HiveField(4)
  String url;
  @JsonKey(defaultValue: "", name: "urlToImage")
  @HiveField(5)
  String urlToImage;
  @JsonKey(defaultValue: "", name: "publishedAt")
  @HiveField(6)
  String publishedAt;
  @JsonKey(defaultValue: "", name: "content")
  @HiveField(7)
  String content;

  Articles(
      {required this.source,
      required this.author,
      required this.title,
      required this.description,
      required this.url,
      required this.urlToImage,
      required this.publishedAt,
      required this.content});

  factory Articles.fromJson(Map<String, dynamic> json) => _$ArticlesFromJson(json);
  Map<String, dynamic> toJson() => _$ArticlesToJson(this);
}
