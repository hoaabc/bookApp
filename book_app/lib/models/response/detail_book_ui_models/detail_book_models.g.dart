// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_book_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DetailBookUIModel _$DetailBookUIModelFromJson(Map<String, dynamic> json) =>
    DetailBookUIModel(
      id: json['id'] as int,
      name: json['name'] as String,
      bookImage: json['bookImage'] as String,
      description: json['description'] as String,
      likeCount: json['likeCount'] as int,
      viewCount: json['viewCount'] as int,
      contentText: json['contentText'] as String,
      contentUrl: json['contentUrl'] as String,
      chapterCount: json['chapterCount'] as int,
      status: json['status'] as String,
      isBookSeries: json['isBookSeries'] as int,
      ratingPoint: json['ratingPoint'] as String,
      createdAt: json['createdAt'] as String,
      createdBy: json['createdBy'] as int,
      publishedAt: json['publishedAt'] as String,
      genres: (json['genres'] as List<dynamic>)
          .map((e) => Genres.fromJson(e as Map<String, dynamic>))
          .toList(),
      author: Author.fromJson(json['author'] as Map<String, dynamic>),
      episodes: (json['episodes'] as List<dynamic>)
          .map((e) => Episodes.fromJson(e as Map<String, dynamic>))
          .toList(),
      comments: (json['comments'] as List<dynamic>)
          .map((e) => Comments.fromJson(e as Map<String, dynamic>))
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
      'createdAt': instance.createdAt,
      'createdBy': instance.createdBy,
      'publishedAt': instance.publishedAt,
      'genres': instance.genres,
      'author': instance.author,
      'episodes': instance.episodes,
      'comments': instance.comments,
    };

Genres _$GenresFromJson(Map<String, dynamic> json) => Genres(
      id: json['id'] as int,
      genreName: json['genreName'] as String,
    );

Map<String, dynamic> _$GenresToJson(Genres instance) => <String, dynamic>{
      'id': instance.id,
      'genreName': instance.genreName,
    };

Author _$AuthorFromJson(Map<String, dynamic> json) => Author(
      id: json['id'] as int,
      name: json['name'] as String,
    );

Map<String, dynamic> _$AuthorToJson(Author instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

Episodes _$EpisodesFromJson(Map<String, dynamic> json) => Episodes(
      name: json['name'] as String,
      createdAt: json['createdAt'] as String,
      contentUrl: json['contentUrl'] as String,
      status: json['status'] as String,
    );

Map<String, dynamic> _$EpisodesToJson(Episodes instance) => <String, dynamic>{
      'name': instance.name,
      'createdAt': instance.createdAt,
      'contentUrl': instance.contentUrl,
      'status': instance.status,
    };

Comments _$CommentsFromJson(Map<String, dynamic> json) => Comments(
      id: json['id'] as int,
      commentContent: json['commentContent'] as String,
      createdAt: json['createdAt'] as String,
      user: User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CommentsToJson(Comments instance) => <String, dynamic>{
      'id': instance.id,
      'commentContent': instance.commentContent,
      'createdAt': instance.createdAt,
      'user': instance.user,
    };

User _$UserFromJson(Map<String, dynamic> json) => User(
      id: json['id'] as int,
      username: json['username'] as String,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
    };
