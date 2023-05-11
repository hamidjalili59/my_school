import 'package:api_service/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:my_school/src/config/constants/general_constants.dart';
import 'package:my_school/src/features/role_call/data/data_sources/remote/rollcall_end_points.dart';
import 'package:my_school/src/features/role_call/domain/models/rollcall_model.dart';

abstract class RollcallRemoteDataSource {
  Future<Either<DioError, Response<Map<String, dynamic>>>> addRollcall(
      {required List<Rollcall> rollcall});

  Future<Either<DioError, Response<Map<String, dynamic>>>> getRollcalls(
      {required int studentId});
}

//

class RollcallRemoteDataSourceImpl implements RollcallRemoteDataSource {
  RollcallRemoteDataSourceImpl(this.apiService);
  final ApiService apiService;

  @override
  Future<Either<DioError, Response<Map<String, dynamic>>>> addRollcall(
          {required List<Rollcall> rollcall}) =>
      apiService.postMethod<Map<String, dynamic>>(
          GeneralConstants.host + RollcallEndpoints.addLink,
          body: {
            'rollcall': rollcall,
          });

  @override
  Future<Either<DioError, Response<Map<String, dynamic>>>> getRollcalls(
      {required int studentId}) {
    return apiService.getMethod(
      GeneralConstants.host + RollcallEndpoints.getLink + studentId.toString(),
    );
  }
}
