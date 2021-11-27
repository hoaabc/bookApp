import 'package:json_annotation/json_annotation.dart';
part 'profile_model_ui.g.dart';

@JsonSerializable()
class ProfileUIModel {
  ProfileUIModel({
    this.id,
    this.username,
    this.email,
    this.fullName,
    this.phone,
    this.roleId,
    this.createdAt,
  });
  @JsonKey()
  int? id;
  @JsonKey()
  String? username;
  @JsonKey()
  String? email;
  @JsonKey()
  String? fullName;
  @JsonKey()
  String? phone;
  @JsonKey()
  int? roleId;
  @JsonKey()
  String? createdAt;

  factory ProfileUIModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileUIModelFromJson(json);
  Map<String, dynamic> toJson() => _$ProfileUIModelToJson(this);
}
