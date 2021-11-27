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
  }// get rêcntt
       Future<Response> getDataRecent(String path) {
    return get(path);
  }

 
}
