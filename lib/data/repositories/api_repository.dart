import 'dart:convert';

import 'package:boilerplate/data/api/api_service.dart';
import 'package:boilerplate/data/api/endpoints.dart';
import 'package:boilerplate/data/exception/api_exception.dart';
import 'package:boilerplate/presentation/home/model/example_model.dart';
import 'package:dartz/dartz.dart';

import 'i_repository.dart';

class ApiRepository implements IRepository {
  final ApiService apiService;

  ApiRepository(this.apiService);

  @override
  Future<Either<ApiException, Map<String, dynamic>>> fetchData() async {
    try {
      final response = await apiService.getData(Endpoints.testApi);
      if (response.statusCode == 200) {
        return Right(json.decode(response.body));
      } else {
        return Left(ApiException.fromJson(json.decode(response.body)));
      }
    } catch (e) {
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, Map<String, dynamic>>> postData() async {
    try {
      final response = await apiService.postData(Endpoints.testApi);
      if (response.statusCode == 200) {
        return Right(json.decode(response.body));
      } else {
        return Left(ApiException.fromJson(json.decode(response.body)));
      }
    } catch (e) {
      return Left(ApiException(e.toString()));
    }
  }
}
