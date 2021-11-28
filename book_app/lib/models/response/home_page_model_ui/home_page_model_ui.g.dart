// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_page_model_ui.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeModelUIModel _$HomeModelUIModelFromJson(Map<String, dynamic> json) =>
    HomeModelUIModel(
      slider: (json['slider'] as List<dynamic>?)
          ?.map((e) => SliderUIModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      genres: (json['genres'] as List<dynamic>?)
          ?.map((e) => GenreUIItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      latestBook: (json['latestBook'] as List<dynamic>?)
          ?.map((e) => UIItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      bookSeries: (json['bookSeries'] as List<dynamic>?)
          ?.map((e) => UIItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      topView: (json['topView'] as List<dynamic>?)
          ?.map((e) => UIItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      mostFavorite: (json['mostFavorite'] as List<dynamic>?)
          ?.map((e) => UIItem.fromJson(e as Map<String, dynamic>))
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

SliderUIModel _$SliderUIModelFromJson(Map<String, dynamic> json) =>
    SliderUIModel(
      name: json['name'] as String?,
      sliderImg: json['sliderImg'] as String?,
    );

Map<String, dynamic> _$SliderUIModelToJson(SliderUIModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'sliderImg': instance.sliderImg,
    };
