import 'package:json_annotation/json_annotation.dart';
part 'ui_item.g.dart';

@JsonSerializable()
class UIItem {
  UIItem({
    required this.id,
    required this.name,
    required this.bookImage,
    required this.isLiked
  });

  final int id;
  final String name;
  final String bookImage;
  final bool isLiked;

   factory UIItem.fromJson(Map<String, dynamic> json) => _$UIItemFromJson(json);
  Map<String, dynamic> toJson() => _$UIItemToJson(this);
}
