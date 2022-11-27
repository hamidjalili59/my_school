import 'package:api_service/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class ApiServiceImpl implements ApiService {
  ApiServiceImpl({this.interceptors, required this.dio}) {
    dio.interceptors.addAll(interceptors ?? []);
  }

  final List<Interceptor>? interceptors;
  final Dio dio;

  @override
  Future<Either<DioError, Response<T>>> getMethod<T>(
    String endpoint, {
    ApiServiceOption? option = const ApiServiceOption(),
  }) async =>
      await dio
          .get<T>(
            endpoint,
            options: option!.requestOptions,
            queryParameters: option.query,
            onReceiveProgress: option.onReceivePercentage,
          )
          .then((response) => right<DioError, Response<T>>(response))
          .catchError((e) => left<DioError, Response<T>>(e as DioError));

  @override
  Future<Either<DioError, Response<T>>> deleteMethod<T>(
    String endpoint, {
    ApiServiceOption? option = const ApiServiceOption(),
    dynamic body,
  }) async =>
      await dio
          .delete<T>(
            endpoint,
            options: option!.requestOptions,
            queryParameters: option.query,
            data: body,
          )
          .then((response) => right<DioError, Response<T>>(response))
          .catchError((e) => left<DioError, Response<T>>(e as DioError));

  @override
  Future<Either<DioError, Response<T>>> postMethod<T>(
    String endpoint, {
    ApiServiceOption? option = const ApiServiceOption(),
    dynamic body,
  }) async =>
      await dio
          .post<T>(
            endpoint,
            options: option!.requestOptions,
            queryParameters: option.query,
            data: body,
          )
          .then((response) => right<DioError, Response<T>>(response))
          .catchError((e) => left<DioError, Response<T>>(e as DioError));

  @override
  Future<Either<DioError, Response<T>>> putMethod<T>(
    String endpoint, {
    ApiServiceOption? option = const ApiServiceOption(),
    dynamic body,
  }) async =>
      await dio
          .put<T>(
            endpoint,
            options: option!.requestOptions,
            queryParameters: option.query,
            data: body,
          )
          .then((response) => right<DioError, Response<T>>(response))
          .catchError((e) => left<DioError, Response<T>>(e as DioError));
}
