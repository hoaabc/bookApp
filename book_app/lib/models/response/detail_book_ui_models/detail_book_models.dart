// import 'package:json_annotation/json_annotation.dart';
// part 'detail_book_models.g.dart';

// // @JsonSerializable()
// // class DetailBookUIModel {
// //   final int id;
// //   final String name;
// //   final String bookImage;
// //   final String description;
// //   final int likeCount;
// //   final int viewCount;
// //   final String contentText;
// //   final String contentUrl;
// //   final int chapterCount;
// //   final String status;
// //   final int isBookSeries;
// //   final String ratingPoint;
// //   final String createdAt;
// //   final int createdBy;
// //   final String publishedAt;
// //   final List<Genres> genres;
// //   final Author author;
// //   final List<Episodes> episodes;
// //   final List<Comments> comments;

// //   DetailBookUIModel(
// //       {required this.id,
// //       required this.name,
// //       required this.bookImage,
// //       required this.description,
// //       required this.likeCount,
// //       required this.viewCount,
// //       required this.contentText,
// //       required this.contentUrl,
// //       required this.chapterCount,
// //       required this.status,
// //       required this.isBookSeries,
// //       required this.ratingPoint,
// //       required this.createdAt,
// //       required this.createdBy,
// //       required this.publishedAt,
// //       required this.genres,
// //       required this.author,
// //       required this.episodes,
// //       required this.comments});

// //   factory DetailBookUIModel.fromJson(Map<String, dynamic> json) =>
// //       _$DetailBookUIModelFromJson(json);
// //   Map<String, dynamic> toJson() => _$DetailBookUIModelToJson(this);
// // }

// // @JsonSerializable()
// // class Genres {
// //   final int id;
// //   final String genreName;

// //   Genres({required this.id, required this.genreName});
// //   factory Genres.fromJson(Map<String, dynamic> json) => _$GenresFromJson(json);
// //   Map<String, dynamic> toJson() => _$GenresToJson(this);
// // }

// // @JsonSerializable()
// // class Author {
// //   final int id;
// //   final String name;

// //   Author({required this.id, required this.name});
// //   factory Author.fromJson(Map<String, dynamic> json) => _$AuthorFromJson(json);
// //   Map<String, dynamic> toJson() => _$AuthorToJson(this);
// // }

// // @JsonSerializable()
// // class Episodes {
// //   final String name;
// //   final String createdAt;
// //   final String contentUrl;
// //   final String status;

// //   Episodes(
// //       {required this.name,
// //       required this.createdAt,
// //       required this.contentUrl,
// //       required this.status});
// //   factory Episodes.fromJson(Map<String, dynamic> json) =>
// //       _$EpisodesFromJson(json);
// //   Map<String, dynamic> toJson() => _$EpisodesToJson(this);
// // }

// // @JsonSerializable()
// // class Comments {
// //   final int id;
// //   final String commentContent;
// //   final String createdAt;
// //   final User user;

// //   Comments(
// //       {required this.id,
// //       required this.commentContent,
// //       required this.createdAt,
// //       required this.user});

// //   factory Comments.fromJson(Map<String, dynamic> json) =>
// //       _$CommentsFromJson(json);
// //   Map<String, dynamic> toJson() => _$CommentsToJson(this);
// // }

// // @JsonSerializable()
// // class User {
// //   final int id;
// //   final String username;

// //   User({required this.id, required this.username});

// //   factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
// //   Map<String, dynamic> toJson() => _$UserToJson(this);
// // }

// // To parse this JSON data, do
// //
// //     final welcome = welcomeFromJson(jsonString);



// class DetailBookUIModel {
//     DetailBookUIModel({
//         this.id,
//         this.name,
//         this.bookImage,
//         this.description,
//         this.likeCount,
//         this.viewCount,
//         this.contentText,
//         this.contentUrl,
//         this.chapterCount,
//         this.status,
//         this.isBookSeries,
//         this.ratingPoint,
//         this.createdAt,
//         this.createdBy,
//         this.publishedAt,
//         this.isLiked,
//         this.genres,
//         this.author,
//         this.episodes,
//         this.comments,
//     });

//     int? id;
//     String? name;
//     String? bookImage;
//     String? description;
//     int? likeCount;
//     int? viewCount;
//     String? contentText;
//     String? contentUrl;
//     int? chapterCount;
//     String? status;
//     int? isBookSeries;
//     String? ratingPoint;
//     DateTime? createdAt;
//     int? createdBy;
//     DateTime? publishedAt;
//     bool? isLiked;
//     List<Genre>? genres;
//     Author? author;
//     List<Episode>? episodes;
//     List<Comment>? comments;

  
// }

// class Author {
//     Author({
//         this.id,
//         this.name,
//     });

//     int id;
//     String name;

//     factory Author.fromJson(Map<String, dynamic> json) => Author(
//         id: json["id"],
//         name: json["name"],
//     );

//     Map<String, dynamic> toJson() => {
//         "id": id,
//         "name": name,
//     };
// }

// class Comment {
//     Comment({
//         this.id,
//         this.commentContent,
//         this.createdAt,
//         this.user,
//     });

//     int id;
//     String commentContent;
//     DateTime createdAt;
//     User user;

//     factory Comment.fromJson(Map<String, dynamic> json) => Comment(
//         id: json["id"],
//         commentContent: json["comment_content"],
//         createdAt: DateTime.parse(json["created_at"]),
//         user: User.fromJson(json["user"]),
//     );

//     Map<String, dynamic> toJson() => {
//         "id": id,
//         "comment_content": commentContent,
//         "created_at": createdAt.toIso8601String(),
//         "user": user.toJson(),
//     };
// }

// class User {
//     User({
//         this.id,
//         this.username,
//     });

//     int id;
//     String username;

//     factory User.fromJson(Map<String, dynamic> json) => User(
//         id: json["id"],
//         username: json["username"],
//     );

//     Map<String, dynamic> toJson() => {
//         "id": id,
//         "username": username,
//     };
// }

// class Episode {
//     Episode({
//         this.name,
//         this.createdAt,
//         this.contentUrl,
//         this.status,
//     });

//     String name;
//     DateTime createdAt;
//     String contentUrl;
//     String status;

//     factory Episode.fromJson(Map<String, dynamic> json) => Episode(
//         name: json["name"],
//         createdAt: DateTime.parse(json["created_at"]),
//         contentUrl: json["content_url"],
//         status: json["status"],
//     );

//     Map<String, dynamic> toJson() => {
//         "name": name,
//         "created_at": createdAt.toIso8601String(),
//         "content_url": contentUrl,
//         "status": status,
//     };
// }

// class Genre {
//     Genre({
//         this.id,
//         this.genreName,
//     });

//     int id;
//     String genreName;

//     factory Genre.fromJson(Map<String, dynamic> json) => Genre(
//         id: json["id"],
//         genreName: json["genre_name"],
//     );

//     Map<String, dynamic> toJson() => {
//         "id": id,
//         "genre_name": genreName,
//     };
// }
