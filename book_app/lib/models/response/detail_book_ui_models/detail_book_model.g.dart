// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_book_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DetailBookUIModel _$DetailBookUIModelFromJson(Map<String, dynamic> json) =>
    DetailBookUIModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      bookImage: json['bookImage'] as String?,
      description: json['description'] as String?,
      likeCount: json['likeCount'] as int?,
      viewCount: json['viewCount'] as int?,
      contentText: json['contentText'] as String?,
      contentUrl: json['contentUrl'] as String?,
      chapterCount: json['chapterCount'] as int?,
      status: json['status'] as String?,
      isBookSeries: json['isBookSeries'] as int?,
      ratingPoint: json['ratingPoint'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      createdBy: json['createdBy'] as int?,
      publishedAt: json['publishedAt'] == null
          ? null
          : DateTime.parse(json['publishedAt'] as String),
      isLiked: json['isLiked'] as bool?,
      genres: (json['genres'] as List<dynamic>?)
          ?.map((e) => GenreUIItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      author: json['author'] == null
          ? null
          : Author.fromJson(json['author'] as Map<String, dynamic>),
      episodes: (json['episodes'] as List<dynamic>?)
          ?.map((e) => Episode.fromJson(e as Map<String, dynamic>))
          .toList(),
      comments: (json['comments'] as List<dynamic>?)
          ?.map((e) => Comment.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DetailBookUIModelToJson(DetailBookUIModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'bookImage': instance.bookImage,
      'description': instance.description,
      'likeCount': instance.likeCount,
      'viewCount': instance.viewCount,
      'contentText': instance.contentText,
      'contentUrl': instance.contentUrl,
      'chapterCount': instance.chapterCount,
      'status': instance.status,
      'isBookSeries': instance.isBookSeries,
      'ratingPoint': instance.ratingPoint,
      'createdAt': instance.createdAt?.toIso8601String(),
      'createdBy': instance.createdBy,
      'publishedAt': instance.publishedAt?.toIso8601String(),
      'isLiked': instance.isLiked,
      'genres': instance.genres,
      'author': instance.author,
      'episodes': instance.episodes,
      'comments': instance.comments,
    };

Author _$AuthorFromJson(Map<String, dynamic> json) => Author(
      id: json['id'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$AuthorToJson(Author instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

Comment _$CommentFromJson(Map<String, dynamic> json) => Comment(
      id: json['id'] as int?,
      commentContent: json['commentContent'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CommentToJson(Comment instance) => <String, dynamic>{
      'id': instance.id,
      'commentContent': instance.commentContent,
      'createdAt': instance.createdAt?.toIso8601String(),
      'user': instance.user,
    };

User _$UserFromJson(Map<String, dynamic> json) => User(
      id: json['id'] as int?,
      username: json['username'] as String?,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
    };

Episode _$EpisodeFromJson(Map<String, dynamic> json) => Episode(
      name: json['name'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      contentUrl: json['contentUrl'] as String?,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$EpisodeToJson(Episode instance) => <String, dynamic>{
      'name': instance.name,
      'createdAt': instance.createdAt?.toIso8601String(),
      'contentUrl': instance.contentUrl,
      'status': instance.status,
    };
