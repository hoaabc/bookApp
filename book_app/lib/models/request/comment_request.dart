import 'dart:convert';

class CommentRequest {
  CommentRequest({
    required this.book_id,
    required this.comment_content,
  });

  final int book_id;
  final String comment_content;

  factory CommentRequest.fromRawJson(String str) =>
      CommentRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CommentRequest.fromJson(Map<String, dynamic> json) => CommentRequest(
        book_id: json['book_id'],
        comment_content: json['comment_content'],
      );

  Map<String, dynamic> toJson() => {
        'book_id': book_id,
        'comment_content': comment_content,
      };
}
