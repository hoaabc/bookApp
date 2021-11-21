import 'dart:async';
import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

import '../models/request/login_request.dart';
import '../models/request/register_request.dart';
import '../models/response/author_model/author_model.dart';
import '../models/response/book_detail_model/book_detail_model.dart';
import '../models/response/home_model/book_home_model.dart';
import '../models/response/login_response.dart';
import '../models/response/register_response.dart';
import '../models/response/slider_model/slider_model.dart';
import '../models/response/users_response.dart';
import 'api.dart';

class ApiRepository {
  ApiRepository({required this.apiProvider});
  final ApiProvider apiProvider;
  Future<LoginResponse?> login(LoginRequest data) async {
    final res =
        await apiProvider.login('${ApiConstants.baseUrl}api/login', data);
    if (res.statusCode == 200) {
      return LoginResponse.fromJson(res.body);
    } else {
      return null;
    }
  }
  Future<RegisterResponse?> register(RegisterRequest data) async {
    final res =
        await apiProvider.register('${ApiConstants.baseUrl}api/authors', data);
    if (res.statusCode == 200) {
      return RegisterResponse.fromJson(res.body);
    }
  }
  Future<UsersResponse?> getUsers() async {
    final res = await apiProvider
        .getUsers('${ApiConstants.baseUrl}api/users?page=1&per_page=12');
    if (res.statusCode == 200) {
      return UsersResponse.fromJson(res.body);
    }
  }
// get data author
  Future<GetDataAuthor?> getDataAuthors() async {
    final res = await apiProvider.getAllAuthor('api/authors');
    if (res.statusCode == 200) {
      return GetDataAuthor.fromJson(res.body);
    }
  }
// get all slider
  Future<ListSlider?> getDataSlider() async {
    final res = await apiProvider.getAllSlider('api/sliders');
    if (res.statusCode == 200) {
      return ListSlider.fromJson(res.body);
    } else {
      print(res);
    }
  }

// boook Home getAllBookHome
  Future<BookList?> getDataAllBookHome() async {
    final res = await apiProvider.getAllBookHome('api/books');
    if (res.statusCode == 200) {
      return BookList.fromJson(res.body);
    }
  }
  // get book detail
  Future<BookDetailModel?> getDataBookDetail({required String idBook}) async {
    final res = await apiProvider.getAllBookDetail('api/books/$idBook');
    if (res.statusCode == 200) {
      return BookDetailModel.fromJson(res.body);
    } else {
      return null;
    }
  }
  //save storage


}
