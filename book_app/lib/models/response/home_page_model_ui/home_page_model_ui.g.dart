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
      latestBook: (json['latest_book'] as List<dynamic>?)
          ?.map((e) => UIItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      bookSeries: (json['book_series'] as List<dynamic>?)
          ?.map((e) => UIItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      topView: (json['top_view'] as List<dynamic>?)
          ?.map((e) => UIItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      mostFavorite: (json['most_favorite'] as List<dynamic>?)
          ?.map((e) => UIItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HomeModelUIModelToJson(HomeModelUIModel instance) =>
    <String, dynamic>{
      'slider': instance.slider,
      'genres': instance.genres,
      'latest_book': instance.latestBook,
      'book_series': instance.bookSeries,
      'top_view': instance.topView,
      'most_favorite': instance.mostFavorite,
    };

SliderUIModel _$SliderUIModelFromJson(Map<String, dynamic> json) =>
    SliderUIModel(
      name: json['name'] as String?,
      sliderImg: json['slider_img'] as String?,
    );

Map<String, dynamic> _$SliderUIModelToJson(SliderUIModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'slider_img': instance.sliderImg,
    };