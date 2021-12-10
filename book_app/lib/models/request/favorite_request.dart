import 'dart:convert';

class FavoriteRequest {
  FavoriteRequest({
    required this.book_id,
  });

  final int book_id;

  factory FavoriteRequest.fromRawJson(String str) =>
      FavoriteRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FavoriteRequest.fromJson(Map<String, dynamic> json) =>
      FavoriteRequest(
        book_id: json['book_id'],
      );

  Map<String, dynamic> toJson() => {
        'book_id': book_id,
      };
}
