import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

import '../book_item_ui_moel/ui_item.dart';

part 'book_home_model.g.dart';

String welcomeToJson(HomeModelUIModel data) => json.encode(data.toJson());

@JsonSerializable()
class HomeModelUIModel {
  HomeModelUIModel({
    required this.slider,
    required this.genres,
    required this.latestBook,
    required this.bookSeries,
    required this.topView,
    required this.mostFavorite,
  });

  final List<SliderUIModel> slider;
  final List<GenreUIModel> genres;
  final List<UIItem> latestBook;
  final List<UIItem> bookSeries;
  final List<UIItem> topView;
  final List<UIItem> mostFavorite;

  factory HomeModelUIModel.fromJson(Map<String, dynamic> json) =>
      _$HomeModelUIModelFromJson(json);
  Map<String, dynamic> toJson() => _$HomeModelUIModelToJson(this);
}

@JsonSerializable()
class GenreUIModel {
  GenreUIModel({
    required this.id,
    required this.genreName,
    required this.description,
    required this.genreImage,
  });

  final int id;
  final String genreName;
  final String description;
  final String genreImage;
  factory GenreUIModel.fromJson(Map<String, dynamic> json) =>
      _$GenreUIModelFromJson(json);
  Map<String, dynamic> toJson() => _$GenreUIModelToJson(this);
}

@JsonSerializable()
class SliderUIModel {
  SliderUIModel({
    required this.name,
    required this.sliderImg,
  });

  final String name;
  final String sliderImg;

  factory SliderUIModel.fromJson(Map<String, dynamic> json) =>
      _$SliderUIModelFromJson(json);
  Map<String, dynamic> toJson() => _$SliderUIModelToJson(this);
}
