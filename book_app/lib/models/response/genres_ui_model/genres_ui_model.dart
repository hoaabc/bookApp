import 'package:json_annotation/json_annotation.dart';
part 'genres_ui_model.g.dart';

@JsonSerializable()
class GenreUIItem {
  GenreUIItem({
    this.id,
    this.genreName,
    this.description,
    this.genreImage,
  });
  @JsonKey()
  int? id;
  @JsonKey()
  String? genreName;
  @JsonKey()
  String? description;
  @JsonKey()
  String? genreImage;
  factory GenreUIItem.fromJson(Map<String, dynamic> json) =>
      _$GenreUIItemFromJson(json);
  Map<String, dynamic> toJson() => _$GenreUIItemToJson(this);
}
