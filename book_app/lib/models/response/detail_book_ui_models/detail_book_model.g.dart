// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_book_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DetailBookUIModel _$DetailBookUIModelFromJson(Map<String, dynamic> json) =>
    DetailBookUIModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      bookImage: json['book_image'] as String?,
      description: json['description'] as String?,
      likeCount: json['like_count'] as int?,
      viewCount: json['view_count'] as int?,
      contentText: json['content_text'] as String?,
      contentUrl: json['content_url'] as String?,
      chapterCount: json['chapter_count'] as int?,
      status: json['status'] as String?,
      isBookSeries: json['is_book_series'] as int?,
      ratingPoint: json['rating_point'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      createdBy: json['created_by'] as int?,
      publishedAt: json['published_at'] == null
          ? null
          : DateTime.parse(json['published_at'] as String),
      isLiked: json['is_liked'] as bool?,
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
      'book_image': instance.bookImage,
      'description': instance.description,
      'like_count': instance.likeCount,
      'view_count': instance.viewCount,
      'content_text': instance.contentText,
      'content_url': instance.contentUrl,
      'chapter_count': instance.chapterCount,
      'status': instance.status,
      'is_book_series': instance.isBookSeries,
      'rating_point': instance.ratingPoint,
      'created_at': instance.createdAt?.toIso8601String(),
      'created_by': instance.createdBy,
      'published_at': instance.publishedAt?.toIso8601String(),
      'is_liked': instance.isLiked,
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
      commentContent: json['comment_content'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CommentToJson(Comment instance) => <String, dynamic>{
      'id': instance.id,
      'comment_content': instance.commentContent,
      'created_at': instance.createdAt?.toIso8601String(),
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
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      contentUrl: json['content_url'] as String?,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$EpisodeToJson(Episode instance) => <String, dynamic>{
      'name': instance.name,
      'created_at': instance.createdAt?.toIso8601String(),
      'content_url': instance.contentUrl,
      'status': instance.status,
    };