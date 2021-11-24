import 'package:json_annotation/json_annotation.dart';
part 'ui_item.g.dart';

@JsonSerializable()
class UIItem {
  UIItem({
    required this.id,
    required this.name,
    required this.bookImage,
  });

  final int id;
  final String name;
  final String bookImage;

   factory UIItem.fromJson(Map<String, dynamic> json) => _$UIItemFromJson(json);
  Map<String, dynamic> toJson() => _$UIItemToJson(this);
}
