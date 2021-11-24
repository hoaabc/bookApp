// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model_ui.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileUIModel _$ProfileUIModelFromJson(Map<String, dynamic> json) =>
    ProfileUIModel(
      id: json['id'] as int,
      username: json['username'] as String,
      email: json['email'] as String,
      fullName: json['fullName'] as String,
      phone: json['phone'] as String,
      roleId: json['roleId'] as int,
      createdAt: json['createdAt'] as String,
    );

Map<String, dynamic> _$ProfileUIModelToJson(ProfileUIModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'fullName': instance.fullName,
      'phone': instance.phone,
      'roleId': instance.roleId,
      'createdAt': instance.createdAt,
    };
