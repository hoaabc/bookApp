import 'package:json_annotation/json_annotation.dart';
part 'rating_result_model_ui.g.dart';

@JsonSerializable()
class RatingBookUIModel {
  @JsonKey()
  bool? success;
  @JsonKey()
  String? message;
  RatingBookUIModel({this.success, this.message});
  factory RatingBookUIModel.fromJson(Map<String, dynamic> json) =>
      _$RatingBookUIModelFromJson(json);
  Map<String, dynamic> toJson() => _$RatingBookUIModelToJson(this);
}
