import 'package:boilerplate/data/exception/api_exception.dart';
import 'package:boilerplate/presentation/home/model/example_model.dart';
import 'package:dartz/dartz.dart';

abstract class IRepository {
  Future<Either<ApiException, Map<String, dynamic>>> fetchData();

  Future<Either<ApiException, Map<String, dynamic>>> postData();
}
