import 'dart:async';

import 'package:book_app/models/request/comment_request.dart';

import '../models/request/login_request.dart';
import '../models/request/register_request.dart';
import '../models/response/auth_model_ui/login_response_ui_model.dart';
import '../models/response/auth_model_ui/register_response.dart';
import '../models/response/book_item_ui_moel/ui_item.dart';
import '../models/response/detail_book_ui_models/detail_book_model.dart';
import '../models/response/home_page_model_ui/home_page_model_ui.dart';
//import '../models/response/home_ui_model/home_model_ui.dart';
import '../models/response/profile_ui_model/profile_model_ui.dart';
import 'api.dart';

class ApiRepository {
  ApiRepository({required this.apiProvider});
  final ApiProvider apiProvider;
  Future<LoginResponseUIModel?> login(LoginRequest data) async {
    final res = await apiProvider.login('api/login', data);
    if (res.statusCode == 200) {
      return LoginResponseUIModel.fromJson(res.body);
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

// home
  Future<HomeModelUIModel?> getDataHomeUI() async {
    final res = await apiProvider.getDataHome('api/home');
    if (res.statusCode == 200) {
      return HomeModelUIModel.fromJson(res.body);
    }
  }

  // getdata profile
  Future<ProfileUIModel?> getDataProfileUI() async {
    final res = await apiProvider.getDataProfile('api/profile');
    if (res.statusCode == 200) {
      return ProfileUIModel.fromJson(res.body);
    } else {
      return null;
    }
  }
  // getDataFavorite

  Future<List<UIItem>?> getDataFavoriteUI() async {
    final res = await apiProvider.getDataFavorite('api/favorite-book');
    if (res.statusCode == 200) {
      final value = res.body!
          .map<UIItem>((e) => UIItem.fromJson(e as Map<String, dynamic>))
          .toList();
      return value;
    } else {
      return null;
    }
  }

  // get data recent
  Future<List<UIItem>?> getDataRecentUI() async {
    final res = await apiProvider.getDataRecent('api/recent-book');
    if (res.statusCode == 200) {
      final value = res.body!
          .map<UIItem>((e) => UIItem.fromJson(e as Map<String, dynamic>))
          .toList();
      return value;
    } else {
      return null;
    }
  }

  // get book detail
  Future<DetailBookUIModel?> getDataBookDetail({required String id}) async {
    try {
      final res = await apiProvider.getDataDetail('api/books/$id');
      if (res.statusCode == 200) {
        return DetailBookUIModel.fromJson(res.body);
      }
    } catch (e) {
      print(e);
      return null;
    }
  }

  // post coment
  Future<bool?> postComment(CommentRequest data) async {
    final res = await apiProvider.comment('api/commentonbook', data);
    if (res.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }
}
