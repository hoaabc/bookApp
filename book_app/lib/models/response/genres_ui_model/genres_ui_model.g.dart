// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'genres_ui_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GenreUIItem _$GenreUIItemFromJson(Map<String, dynamic> json) => GenreUIItem(
      id: json['id'] as int?,
      genreName: json['genre_name'] as String?,
      description: json['description'] as String?,
      genreImage: json['genre_image'] as String?,
    );

Map<String, dynamic> _$GenreUIItemToJson(GenreUIItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'genre_name': instance.genreName,
      'description': instance.description,
      'genre_image': instance.genreImage,
    };
