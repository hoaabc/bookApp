import 'package:json_annotation/json_annotation.dart';

import '../book_item_ui_moel/ui_item.dart';

part 'profile_orther_model_ui.g.dart';

@JsonSerializable()
class ProfileOrtherUIModel {
  @JsonKey()
  int? id;
  @JsonKey()
  String? username;
  @JsonKey()
  String? email;
  @JsonKey()
  String? fullName;
  @JsonKey()
  String? image;
  @JsonKey()
  String? phone;
  @JsonKey()
  int? roleId;
  @JsonKey()
  String? createdAt;
  @JsonKey()
  List<UIItem>? favoriteBook;
  @JsonKey()
  int? countFavorite;

  ProfileOrtherUIModel(
      {this.id,
      this.username,
      this.email,
      this.fullName,
      this.image,
      this.phone,
      this.roleId,
      this.createdAt,
      this.favoriteBook,
      this.countFavorite});

  factory ProfileOrtherUIModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileOrtherUIModelFromJson(json);
  Map<String, dynamic> toJson() => _$ProfileOrtherUIModelToJson(this);
}
