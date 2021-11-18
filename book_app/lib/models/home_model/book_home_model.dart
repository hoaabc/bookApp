class BookList {
  int? currentPage;
  List<BookDetail>? data;
  String? firstPageUrl;
  int? from;
  int? lastPage;
  String? lastPageUrl;
  List<Links>? links;
  String? nextPageUrl;
  String? path;
  int? perPage;
  Null prevPageUrl;
  int? to;
  int? total;

  BookList(
      {this.currentPage,
      this.data,
      this.firstPageUrl,
      this.from,
      this.lastPage,
      this.lastPageUrl,
      this.links,
      this.nextPageUrl,
      this.path,
      this.perPage,
      this.prevPageUrl,
      this.to,
      this.total});

  BookList.fromJson(Map<String, dynamic> json) {
    currentPage = json['current_page'];
    if (json['data'] != null) {
      data = <BookDetail>[];
      json['data'].forEach((v) {
        data!.add(BookDetail.fromJson(v));
      });
    }
    firstPageUrl = json['first_page_url'];
    from = json['from'];
    lastPage = json['last_page'];
    lastPageUrl = json['last_page_url'];
    if (json['links'] != null) {
      links = <Links>[];
      json['links'].forEach((v) {
        links!.add(Links.fromJson(v));
      });
    }
    nextPageUrl = json['next_page_url'];
    path = json['path'];
    perPage = json['per_page'];
    prevPageUrl = json['prev_page_url'];
    to = json['to'];
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['current_page'] = currentPage;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['first_page_url'] = firstPageUrl;
    data['from'] = from;
    data['last_page'] = lastPage;
    data['last_page_url'] = lastPageUrl;
    if (links != null) {
      data['links'] = links!.map((v) => v.toJson()).toList();
    }
    data['next_page_url'] = nextPageUrl;
    data['path'] = path;
    data['per_page'] = perPage;
    data['prev_page_url'] = prevPageUrl;
    data['to'] = to;
    data['total'] = total;
    return data;
  }
}

class BookDetail {
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

  BookDetail(
      {this.id,
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

  BookDetail.fromJson(Map<String, dynamic> json) {
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

class Links {
  String? url;
  String? label;
  bool? active;

  Links({this.url, this.label, this.active});

  Links.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    label = json['label'];
    active = json['active'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['url'] = url;
    data['label'] = label;
    data['active'] = active;
    return data;
  }
}
