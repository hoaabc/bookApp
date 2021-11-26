// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ui_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UIItem _$UIItemFromJson(Map<String, dynamic> json) => UIItem(
      id: json['id'] as int,
      name: json['name'] as String,
      bookImage: json['bookImage'] as String,
      isLiked: json['isLiked'] as bool,
    );

Map<String, dynamic> _$UIItemToJson(UIItem instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'bookImage': instance.bookImage,
      'isLiked': instance.isLiked,
    };
