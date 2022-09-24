import 'package:hiveapp/model/source_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'articles_model.g.dart';

@JsonSerializable()
class Articles {
  @JsonKey(name: "source")
  Source source;
  @JsonKey(defaultValue: "", name: "author")
  String author;
  @JsonKey(defaultValue: "", name: "title")
  String title;
  @JsonKey(defaultValue: "", name: "description")
  String description;
  @JsonKey(defaultValue: "", name: "url")
  String url;
  @JsonKey(defaultValue: "", name: "urlToImage")
  String urlToImage;
  @JsonKey(defaultValue: "", name: "publishedAt")
  String publishedAt;
  @JsonKey(defaultValue: "", name: "content")
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
