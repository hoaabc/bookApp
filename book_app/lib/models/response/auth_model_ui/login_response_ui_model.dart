import 'package:json_annotation/json_annotation.dart';
part 'login_response_ui_model.g.dart';

@JsonSerializable()
class LoginResponseUIModel {
  LoginResponseUIModel({
    required this.token,
  });

  final String token;

  factory LoginResponseUIModel.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseUIModelFromJson(json);
  Map<String, dynamic> toJson() => _$LoginResponseUIModelToJson(this);
}
