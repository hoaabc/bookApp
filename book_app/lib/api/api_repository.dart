import 'dart:async';

import '../models/request/login_request.dart';
import '../models/request/register_request.dart';
import '../models/response/author_model/author_model.dart';
import '../models/response/login_response.dart';
import '../models/response/register_response.dart';
import '../models/response/users_response.dart';
import 'api.dart';

class ApiRepository {
  ApiRepository({required this.apiProvider});

  final ApiProvider apiProvider;

  Future<LoginResponse?> login(LoginRequest data) async {
    final res = await apiProvider.login('/api/login', data);
    if (res.statusCode == 200) {
      return LoginResponse.fromJson(res.body);
    }
  }

  Future<RegisterResponse?> register(RegisterRequest data) async {
    final res = await apiProvider.register('/api/register', data);
    if (res.statusCode == 200) {
      return RegisterResponse.fromJson(res.body);
    }
  }

  Future<UsersResponse?> getUsers() async {
    final res = await apiProvider.getUsers('/api/users?page=1&per_page=12');
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
}
