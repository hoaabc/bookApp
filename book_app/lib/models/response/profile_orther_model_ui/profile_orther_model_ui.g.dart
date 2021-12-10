// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_orther_model_ui.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileOrtherUIModel _$ProfileOrtherUIModelFromJson(
        Map<String, dynamic> json) =>
    ProfileOrtherUIModel(
      id: json['id'] as int?,
      username: json['username'] as String?,
      email: json['email'] as String?,
      fullName: json['full_name'] as String?,
      image: json['image'] as String?,
      phone: json['phone'] as String?,
      roleId: json['role_id'] as int?,
      createdAt: json['created_at'] as String?,
      favoriteBook: (json['favorite_book'] as List<dynamic>?)
          ?.map((e) => UIItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      countFavorite: json['count_favorite'] as int?,
    );

Map<String, dynamic> _$ProfileOrtherUIModelToJson(
        ProfileOrtherUIModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'full_name': instance.fullName,
      'image': instance.image,
      'phone': instance.phone,
      'role_id': instance.roleId,
      'created_at': instance.createdAt,
      'favorite_book': instance.favoriteBook,
      'count_favorite': instance.countFavorite,
    };
