// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_home_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeModelUIModel _$HomeModelUIModelFromJson(Map<String, dynamic> json) =>
    HomeModelUIModel(
      slider: (json['slider'] as List<dynamic>)
          .map((e) => SliderUIModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      genres: (json['genres'] as List<dynamic>)
          .map((e) => GenreUIModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      latestBook: (json['latestBook'] as List<dynamic>)
          .map((e) => UIItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      bookSeries: (json['bookSeries'] as List<dynamic>)
          .map((e) => UIItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      topView: (json['topView'] as List<dynamic>)
          .map((e) => UIItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      mostFavorite: (json['mostFavorite'] as List<dynamic>)
          .map((e) => UIItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HomeModelUIModelToJson(HomeModelUIModel instance) =>
    <String, dynamic>{
      'slider': instance.slider,
      'genres': instance.genres,
      'latestBook': instance.latestBook,
      'bookSeries': instance.bookSeries,
      'topView': instance.topView,
      'mostFavorite': instance.mostFavorite,
    };

GenreUIModel _$GenreUIModelFromJson(Map<String, dynamic> json) => GenreUIModel(
      id: json['id'] as int,
      genreName: json['genreName'] as String,
      description: json['description'] as String,
      genreImage: json['genreImage'] as String,
    );

Map<String, dynamic> _$GenreUIModelToJson(GenreUIModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'genreName': instance.genreName,
      'description': instance.description,
      'genreImage': instance.genreImage,
    };

SliderUIModel _$SliderUIModelFromJson(Map<String, dynamic> json) =>
    SliderUIModel(
      name: json['name'] as String,
      sliderImg: json['sliderImg'] as String,
    );

Map<String, dynamic> _$SliderUIModelToJson(SliderUIModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'sliderImg': instance.sliderImg,
    };
