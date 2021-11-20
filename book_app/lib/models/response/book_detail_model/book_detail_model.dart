class BookDetailModel {
  int? id;
  String? name;
  String? bookImage;
  String? description;
  int? likeCount;
  int? viewCount;
  String? contentText;
  String? contentUrl;
  int? chapterCount;
  String? status;
  int? authorId;
  int? isBookSeries;
  int? ratingPoint;
  String? createdAt;
  int? createdBy;
  String? publishedAt;

  BookDetailModel(
      {
        this.id,
      this.name,
      this.bookImage,
      this.description,
      this.likeCount,
      this.viewCount,
      this.contentText,
      this.contentUrl,
      this.chapterCount,
      this.status,
      this.authorId,
      this.isBookSeries,
      this.ratingPoint,
      this.createdAt,
      this.createdBy,
      this.publishedAt});

  BookDetailModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    bookImage = json['book_image'];
    description = json['description'];
    likeCount = json['like_count'];
    viewCount = json['view_count'];
    contentText = json['content_text'];
    contentUrl = json['content_url'];
    chapterCount = json['chapter_count'];
    status = json['status'];
    authorId = json['author_id'];
    isBookSeries = json['is_book_series'];
    ratingPoint = json['rating_point'];
    createdAt = json['created_at'];
    createdBy = json['created_by'];
    publishedAt = json['published_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['name'] = name;
    data['book_image'] = bookImage;
    data['description'] = description;
    data['like_count'] = likeCount;
    data['view_count'] = viewCount;
    data['content_text'] = contentText;
    data['content_url'] = contentUrl;
    data['chapter_count'] = chapterCount;
    data['status'] = status;
    data['author_id'] = authorId;
    data['is_book_series'] = isBookSeries;
    data['rating_point'] = ratingPoint;
    data['created_at'] = createdAt;
    data['created_by'] = createdBy;
    data['published_at'] = publishedAt;
    return data;
  }
}
