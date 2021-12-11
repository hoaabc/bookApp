import 'package:book_app/models/request/comment_request.dart';
import 'package:book_app/models/request/favorite_request.dart';
import 'package:book_app/models/request/rating_request.dart';
import 'package:get/get.dart';

import '../models/request/login_request.dart';
import '../models/request/register_request.dart';
import 'base_provider.dart';

class ApiProvider extends BaseProvider {
  Future<Response> login(String path, LoginRequest data) {
    return post(path, data.toJson());
  }

  Future<Response> register(String path, RegisterRequest data) {
    return post(path, data.toJson());
  }

  Future<Response> getUsers(String path) {
    return get(path);
  }

  // get book home
  Future<Response> getDataHome(String path) {
    return get(path);
  }

  // profile
  Future<Response> getDataProfile(String path) {
    return get(path);
  }

  // yeu thích :
  Future<Response> getDataFavorite(String path) {
    return get(path);
  } // get rêcntt

  Future<Response> getDataRecent(String path) {
    return get(path);
  }

  Future<Response> getDataDetail(String path) {
    return get(path);
  }

  // post comment
  Future<Response> comment(String path, CommentRequest data) {
    return post(path, data.toJson());
  }

  // get userOrther
  Future<Response> getDataUserOrther(String path) {
    return get(path);
  }

  // rating
  Future<Response> ratingBook(String path, RatingRequest data) {
    return post(path, data.toJson());
  }
  // yeu thich 
    Future<Response> favoriteBook(String path, FavoriteRequest data) {
    return post(path, data.toJson());
  }
  // top view
     Future<Response> topViewBook(String path) {
     return get(path);
  }
  // get genres detail
       Future<Response> genresDetail(String path) {
     return get(path);
  }

}
