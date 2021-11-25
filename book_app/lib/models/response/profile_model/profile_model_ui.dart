import 'package:json_annotation/json_annotation.dart';
part 'profile_model_ui.g.dart';

@JsonSerializable()
class ProfileUIModel {
  ProfileUIModel({
    required this.id,
    required this.username,
    required this.email,
    required this.fullName,
    required this.phone,
    required this.roleId,
    required this.createdAt,
  });

  int id;
  String username;
  String email;
  String fullName;
  String phone;
  int roleId;
  String createdAt;

  factory ProfileUIModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileUIModelFromJson(json);
  Map<String, dynamic> toJson() => _$ProfileUIModelToJson(this);
}
