import 'dart:convert';

class RatingRequest {
  RatingRequest({
    required this.book_id,
    required this.rating_point,
  });

  final int book_id;
  final int rating_point;

  factory RatingRequest.fromRawJson(String str) =>
      RatingRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory RatingRequest.fromJson(Map<String, dynamic> json) => RatingRequest(
        book_id: json['book_id'],
        rating_point: json['rating_point'],
      );

  Map<String, dynamic> toJson() => {
        'book_id': book_id,
        'rating_point': rating_point,
      };
}