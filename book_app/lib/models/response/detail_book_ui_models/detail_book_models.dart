import 'package:json_annotation/json_annotation.dart';
part 'detail_book_models.g.dart';

@JsonSerializable()
class DetailBookUIModel {
  DetailBookUIModel({
    required this.id,
    required this.name,
    required this.bookImage,
    required this.description,
    required this.likeCount,
    required this.viewCount,
    required this.contentText,
    required this.contentUrl,
    required this.chapterCount,
    required this.status,
    required this.isBookSeries,
    required this.ratingPoint,
    required this.createdAt,
    required this.createdBy,
    required this.publishedAt,
    required this.genres,
    required this.author,
    required this.episodes,
    required this.comments,
  });

  final int id;
  final String name;
  final String bookImage;
  final String description;
  final int likeCount;
  final int viewCount;
  final String contentText;
  final String contentUrl;
  final int chapterCount;
  final String status;
  final int isBookSeries;
  final String ratingPoint;
  final DateTime createdAt;
  final int createdBy;
  final DateTime publishedAt;
  final List<Genre> genres;
  final Author author;
  final List<Episode> episodes;
  final List<Comment> comments;

  factory DetailBookUIModel.fromJson(Map<String, dynamic> json) =>
      _$DetailBookUIModelFromJson(json);
  Map<String, dynamic> toJson() => _$DetailBookUIModelToJson(this);
}

@JsonSerializable()
class Author {
  Author({
    required this.id,
    required this.name,
  });

  final int id;
  final String name;
  factory Author.fromJson(Map<String, dynamic> json) => _$AuthorFromJson(json);
  Map<String, dynamic> toJson() => _$AuthorToJson(this);
}

@JsonSerializable()
class Comment {
  Comment({
    required this.id,
    required this.commentContent,
    required this.createdAt,
    required this.user,
  });

  final int id;
  final String commentContent;
  final DateTime createdAt;
  final User user;

  factory Comment.fromJson(Map<String, dynamic> json) =>
      _$CommentFromJson(json);
  Map<String, dynamic> toJson() => _$CommentToJson(this);
}

@JsonSerializable()
class User {
  User({
    required this.id,
    required this.username,
  });

  final int id;
  final String username;
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}

@JsonSerializable()
class Episode {
  Episode({
    required this.name,
    required this.createdAt,
    required this.contentUrl,
    required this.status,
  });

  final String name;
  final DateTime createdAt;
  final String contentUrl;
  final Status status;
  factory Episode.fromJson(Map<String, dynamic> json) =>
      _$EpisodeFromJson(json);
  Map<String, dynamic> toJson() => _$EpisodeToJson(this);
}

enum Status { FINISHED, UNKNOWN, ON_PROCESS, REMOVED }

final statusValues = EnumValues({
  'finished': Status.FINISHED,
  'on process': Status.ON_PROCESS,
  'removed': Status.REMOVED,
  'unknown': Status.UNKNOWN
});

@JsonSerializable()
class Genre {
  Genre({
    required this.id,
    required this.genreName,
  });

  final int id;
  final String genreName;
  factory Genre.fromJson(Map<String, dynamic> json) => _$GenreFromJson(json);
  Map<String, dynamic> toJson() => _$GenreToJson(this);
}

@JsonSerializable()
class EnumValues<T> {
  Map<String, T>? map;
  Map<T, String>? reverseMap;

  EnumValues(this.map);
  factory EnumValues.fromJson(Map<String, dynamic> json) =>
      _$EnumValuesFromJson(json);
  Map<String, dynamic> toJson() => _$EnumValuesToJson(this);
}
