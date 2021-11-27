// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model_ui.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileUIModel _$ProfileUIModelFromJson(Map<String, dynamic> json) =>
    ProfileUIModel(
      id: json['id'] as int?,
      username: json['username'] as String?,
      email: json['email'] as String?,
      fullName: json['full_name'] as String?,
      phone: json['phone'] as String?,
      roleId: json['role_id'] as int?,
      createdAt: json['created_at'] as String?,
    );

Map<String, dynamic> _$ProfileUIModelToJson(ProfileUIModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'full_name': instance.fullName,
      'phone': instance.phone,
      'role_id': instance.roleId,
      'created_at': instance.createdAt,
    };
