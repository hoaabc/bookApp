// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response_ui_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponseUIModel _$LoginResponseUIModelFromJson(
        Map<String, dynamic> json) =>
    LoginResponseUIModel(
      accessToken: json['access_token'] as String,
      tokenType: json['token_type'] as String,
      expiresIn: json['expires_in'] as int,
      payload: Payload.fromJson(json['payload'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoginResponseUIModelToJson(
        LoginResponseUIModel instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'token_type': instance.tokenType,
      'expires_in': instance.expiresIn,
      'payload': instance.payload,
    };

Payload _$PayloadFromJson(Map<String, dynamic> json) => Payload(
      iss: json['iss'] as String,
      iat: json['iat'] as int,
      exp: json['exp'] as int,
      nbf: json['nbf'] as int,
      jti: json['jti'] as String,
      sub: json['sub'] as int,
      prv: json['prv'] as String,
      id: json['id'] as int,
      fullName: json['full_name'] as String,
      email: json['email'] as String,
      role: json['role'] as int,
    );

Map<String, dynamic> _$PayloadToJson(Payload instance) => <String, dynamic>{
      'iss': instance.iss,
      'iat': instance.iat,
      'exp': instance.exp,
      'nbf': instance.nbf,
      'jti': instance.jti,
      'sub': instance.sub,
      'prv': instance.prv,
      'id': instance.id,
      'full_name': instance.fullName,
      'email': instance.email,
      'role': instance.role,
    };
