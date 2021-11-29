import 'package:json_annotation/json_annotation.dart';

import '../book_item_ui_moel/ui_item.dart';
import '../genres_ui_model/genres_ui_model.dart';

part 'home_page_model_ui.g.dart';

@JsonSerializable()
class HomeModelUIModel {
  HomeModelUIModel({
    this.slider,
    this.genres,
    this.latestBook,
    this.bookSeries,
    this.topView,
    this.mostFavorite,
  });
  @JsonKey()
  List<SliderUIModel>? slider;
  @JsonKey()
  List<GenreUIItem>? genres;
  @JsonKey()
  List<UIItem>? latestBook;
  @JsonKey()
  List<UIItem>? bookSeries;
  @JsonKey()
  List<UIItem>? topView;
  @JsonKey()
  List<UIItem>? mostFavorite;
  factory HomeModelUIModel.fromJson(Map<String, dynamic> json) =>
      _$HomeModelUIModelFromJson(json);
  Map<String, dynamic> toJson() => _$HomeModelUIModelToJson(this);
}



@JsonSerializable()
class SliderUIModel {
  SliderUIModel({
    this.name,
    this.sliderImg,
  });
  @JsonKey()
  String? name;
  @JsonKey()
  String? sliderImg;
  factory SliderUIModel.fromJson(Map<String, dynamic> json) =>
      _$SliderUIModelFromJson(json);
  Map<String, dynamic> toJson() => _$SliderUIModelToJson(this);
}
