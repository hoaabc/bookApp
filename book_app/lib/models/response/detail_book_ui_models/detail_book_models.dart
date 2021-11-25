import 'package:json_annotation/json_annotation.dart';
part 'detail_book_models.g.dart';

@JsonSerializable()
class DetailBookUIModel {
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
  final String createdAt;
  final int createdBy;
  final String publishedAt;
  final List<Genres> genres;
  final Author author;
  final List<Episodes> episodes;
  final List<Comments> comments;

  DetailBookUIModel(
      {required this.id,
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
      required this.comments});

  factory DetailBookUIModel.fromJson(Map<String, dynamic> json) =>
      _$DetailBookUIModelFromJson(json);
  Map<String, dynamic> toJson() => _$DetailBookUIModelToJson(this);
}

@JsonSerializable()
class Genres {
  final int id;
  final String genreName;

  Genres({required this.id, required this.genreName});
  factory Genres.fromJson(Map<String, dynamic> json) => _$GenresFromJson(json);
  Map<String, dynamic> toJson() => _$GenresToJson(this);
}

@JsonSerializable()
class Author {
  final int id;
  final String name;

  Author({required this.id, required this.name});
  factory Author.fromJson(Map<String, dynamic> json) => _$AuthorFromJson(json);
  Map<String, dynamic> toJson() => _$AuthorToJson(this);
}

@JsonSerializable()
class Episodes {
  final String name;
  final String createdAt;
  final String contentUrl;
  final String status;

  Episodes(
      {required this.name,
      required this.createdAt,
      required this.contentUrl,
      required this.status});
  factory Episodes.fromJson(Map<String, dynamic> json) =>
      _$EpisodesFromJson(json);
  Map<String, dynamic> toJson() => _$EpisodesToJson(this);
}

@JsonSerializable()
class Comments {
  final int id;
  final String commentContent;
  final String createdAt;
  final User user;

  Comments(
      {required this.id,
      required this.commentContent,
      required this.createdAt,
      required this.user});

  factory Comments.fromJson(Map<String, dynamic> json) =>
      _$CommentsFromJson(json);
  Map<String, dynamic> toJson() => _$CommentsToJson(this);
}

@JsonSerializable()
class User {
  final int id;
  final String username;

  User({required this.id, required this.username});

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}
