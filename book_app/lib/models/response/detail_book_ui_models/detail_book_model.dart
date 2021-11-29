import 'package:json_annotation/json_annotation.dart';

import '../genres_ui_model/genres_ui_model.dart';

part 'detail_book_model.g.dart';

@JsonSerializable()
class DetailBookUIModel {
  DetailBookUIModel({
    this.id,
    this.name,
    this.bookImage,
    this.description,
    this.likeCount,
    this.viewCount,
    this.contentText,
    this.contentUrl,
    this.chapterCount,
    this.status,
    this.isBookSeries,
    this.ratingPoint,
    this.createdAt,
    this.createdBy,
    this.publishedAt,
    this.isLiked,
    this.genres,
    this.author,
    this.episodes,
    this.comments,
  });
  @JsonKey()
  int? id;
  @JsonKey()
  String? name;
  @JsonKey()
  String? bookImage;
  @JsonKey()
  String? description;
  @JsonKey()
  int? likeCount;
  @JsonKey()
  int? viewCount;
  @JsonKey()
  String? contentText;
  @JsonKey()
  String? contentUrl;
  @JsonKey()
  int? chapterCount;
  @JsonKey()
  String? status;
  @JsonKey()
  int? isBookSeries;
  @JsonKey()
  String? ratingPoint;
  @JsonKey()
  DateTime? createdAt;
  @JsonKey()
  int? createdBy;
  @JsonKey()
  DateTime? publishedAt;
  @JsonKey()
  bool? isLiked;
  @JsonKey()
  List<GenreUIItem>? genres;
  @JsonKey()
  Author? author;
  @JsonKey()
  List<Episode>? episodes;
  @JsonKey()
  List<Comment>? comments;
  factory DetailBookUIModel.fromJson(Map<String, dynamic> json) =>
      _$DetailBookUIModelFromJson(json);
  Map<String, dynamic> toJson() => _$DetailBookUIModelToJson(this);
}

@JsonSerializable()
class Author {
  Author({
    this.id,
    this.name,
  });
  @JsonKey()
  int? id;
  @JsonKey()
  String? name;
  factory Author.fromJson(Map<String, dynamic> json) => _$AuthorFromJson(json);
  Map<String, dynamic> toJson() => _$AuthorToJson(this);
}

@JsonSerializable()
class Comment {
  Comment({
    this.id,
    this.commentContent,
    this.createdAt,
    this.user,
  });
  @JsonKey()
  int? id;
  @JsonKey()
  String? commentContent;
  @JsonKey()
  DateTime? createdAt;
  @JsonKey()
  User? user;
  factory Comment.fromJson(Map<String, dynamic> json) =>
      _$CommentFromJson(json);
  Map<String, dynamic> toJson() => _$CommentToJson(this);
}

@JsonSerializable()
class User {
  User({
    this.id,
    this.username,
  });
  @JsonKey()
  int? id;
  @JsonKey()
  String? username;
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}

@JsonSerializable()
class Episode {
  Episode({
    this.name,
    this.createdAt,
    this.contentUrl,
    this.status,
  });
  @JsonKey()
  String? name;
  @JsonKey()
  DateTime? createdAt;
  @JsonKey()
  String? contentUrl;
  @JsonKey()
  String? status;
  factory Episode.fromJson(Map<String, dynamic> json) =>
      _$EpisodeFromJson(json);
  Map<String, dynamic> toJson() => _$EpisodeToJson(this);
}
