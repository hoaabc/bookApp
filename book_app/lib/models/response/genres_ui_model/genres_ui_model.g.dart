// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'genres_ui_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GenreUIItem _$GenreUIItemFromJson(Map<String, dynamic> json) => GenreUIItem(
      id: json['id'] as int?,
      genreName: json['genreName'] as String?,
      description: json['description'] as String?,
      genreImage: json['genreImage'] as String?,
    );

Map<String, dynamic> _$GenreUIItemToJson(GenreUIItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'genreName': instance.genreName,
      'description': instance.description,
      'genreImage': instance.genreImage,
    };
