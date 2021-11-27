// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ui_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UIItem _$UIItemFromJson(Map<String, dynamic> json) => UIItem(
      id: json['id'] as int?,
      name: json['name'] as String?,
      bookImage: json['book_image'] as String?,
      isLiked: json['is_liked'] as bool?,
    );

Map<String, dynamic> _$UIItemToJson(UIItem instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'book_image': instance.bookImage,
      'is_liked': instance.isLiked,
    };
