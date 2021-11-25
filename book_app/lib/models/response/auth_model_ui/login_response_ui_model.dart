import 'package:json_annotation/json_annotation.dart';
part 'login_response_ui_model.g.dart';

@JsonSerializable()
class LoginResponseUIModel {
  final String accessToken;
  final String tokenType;
  final int expiresIn;
  final Payload payload;

  LoginResponseUIModel(
      {required this.accessToken,
      required this.tokenType,
      required this.expiresIn,
      required this.payload});

  factory LoginResponseUIModel.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseUIModelFromJson(json);
  Map<String, dynamic> toJson() => _$LoginResponseUIModelToJson(this);
}

@JsonSerializable()
class Payload {
  final String iss;
  final int iat;
  final int exp;
  final int nbf;
  final String jti;
  final int sub;
  final String prv;
  final int id;
  final String fullName;
  final String email;
  final int role;

  Payload(
      {required this.iss,
      required this.iat,
      required this.exp,
      required this.nbf,
      required this.jti,
      required this.sub,
      required this.prv,
      required this.id,
      required this.fullName,
      required this.email,
      required this.role});

  factory Payload.fromJson(Map<String, dynamic> json) =>
      _$PayloadFromJson(json);
  Map<String, dynamic> toJson() => _$PayloadToJson(this);
}
// To parse this JSON data, do

//     final welcome = welcomeFromJson(jsonString);

// import 'dart:convert';

// LoginResponseUIModel welcomeFromJson(String str) =>
//     LoginResponseUIModel.fromJson(json.decode(str));

// String welcomeToJson(LoginResponseUIModel data) => json.encode(data.toJson());

// class LoginResponseUIModel {
//   LoginResponseUIModel({
//     required this.accessToken,
//     required this.tokenType,
//     required this.expiresIn,
//     required this.payload,
//   });

//   final String accessToken;
//   final String tokenType;
//   final int expiresIn;
//   final Payload payload;

//   factory LoginResponseUIModel.fromJson(Map<String, dynamic> json) =>
//       LoginResponseUIModel(
//         accessToken: json["access_token"],
//         tokenType: json["token_type"],
//         expiresIn: json["expires_in"],
//         payload: Payload.fromJson(json["payload"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "access_token": accessToken,
//         "token_type": tokenType,
//         "expires_in": expiresIn,
//         "payload": payload.toJson(),
//       };
// }

// class Payload {
//   Payload({
//     required this.iss,
//     required this.iat,
//     required this.exp,
//     required this.nbf,
//     required this.jti,
//     required this.sub,
//     required this.prv,
//     required this.id,
//     required this.fullName,
//     required this.email,
//     required this.role,
//   });

//   final String iss;
//   final int iat;
//   final int exp;
//   final int nbf;
//   final String jti;
//   final int sub;
//   final String prv;
//   final int id;
//   final String fullName;
//   final String email;
//   final int role;

//   factory Payload.fromJson(Map<String, dynamic> json) => Payload(
//         iss: json["iss"],
//         iat: json["iat"],
//         exp: json["exp"],
//         nbf: json["nbf"],
//         jti: json["jti"],
//         sub: json["sub"],
//         prv: json["prv"],
//         id: json["id"],
//         fullName: json["full_name"],
//         email: json["email"],
//         role: json["role"],
//       );

//   Map<String, dynamic> toJson() => {
//         "iss": iss,
//         "iat": iat,
//         "exp": exp,
//         "nbf": nbf,
//         "jti": jti,
//         "sub": sub,
//         "prv": prv,
//         "id": id,
//         "full_name": fullName,
//         "email": email,
//         "role": role,
//       };
// }
