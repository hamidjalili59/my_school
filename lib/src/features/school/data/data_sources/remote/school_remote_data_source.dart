import 'package:api_service/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:my_school/src/config/constants/general_constants.dart';

abstract class SchoolRemoteDataSource {
  Future<Either<DioException, Response<Map<String, dynamic>>>> getSchools(
      {required double numberPhone});
}

//

class SchoolRemoteDataSourceImpl implements SchoolRemoteDataSource {
  SchoolRemoteDataSourceImpl(this.apiService);
  final ApiService apiService;

  @override
  Future<Either<DioException, Response<Map<String, dynamic>>>> getSchools(
      {required double numberPhone}) {
    return apiService.getMethod(
      '${GeneralConstants.host}api/v1/School/$numberPhone',
    );
  }
}
