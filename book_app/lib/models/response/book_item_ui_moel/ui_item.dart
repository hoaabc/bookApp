import 'package:json_annotation/json_annotation.dart';
part 'ui_item.g.dart';

@JsonSerializable()
class UIItem {
  UIItem({
     this.id,
     this.name,
     this.bookImage,
     this.isLiked
  });
   @JsonKey()
   int? id;
   @JsonKey()
   String? name;
   @JsonKey()
   String? bookImage;
   @JsonKey()
   bool? isLiked;
   factory UIItem.fromJson(Map<String, dynamic> json) => _$UIItemFromJson(json);
  Map<String, dynamic> toJson() => _$UIItemToJson(this);
}
