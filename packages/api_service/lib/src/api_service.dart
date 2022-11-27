import 'package:api_service/src/api_service_option.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

abstract class ApiService {
  ///perform a http get request
  Future<Either<DioError, Response<T>>> getMethod<T>(
    String endpoint, {
    ApiServiceOption? option,
  });

  ///perform a http put request
  Future<Either<DioError, Response<T>>> putMethod<T>(
    String endpoint, {
    ApiServiceOption? option,
    dynamic body,
  });

  ///perform a http delete request
  Future<Either<DioError, Response<T>>> deleteMethod<T>(
    String endpoint, {
    ApiServiceOption? option,
    dynamic body,
  });

  ///perform a http post request
  Future<Either<DioError, Response<T>>> postMethod<T>(
    String endpoint, {
    ApiServiceOption? option,
    dynamic body,
  });
}
