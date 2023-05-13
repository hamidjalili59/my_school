import 'package:api_service/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:my_school/src/config/constants/general_constants.dart';
import 'package:my_school/src/features/mediator_tc/data/data_sources/remote/mediator_end_points.dart';
import 'package:my_school/src/features/mediator_tc/domain/models/mediator.dart';

abstract class MediatorRemoteDataSource {
  Future<Either<DioError, Response<Map<String, dynamic>>>> addMediator(
      {required Mediator mediator, required int courseId});

  Future<Either<DioError, Response<Map<String, dynamic>>>> getMediators(
      {required int classId});

  Future<Either<DioError, Response<Map<String, dynamic>>>> removeMediator(
      {required int mediatorId});
}

//

class MediatorRemoteDataSourceImpl implements MediatorRemoteDataSource {
  MediatorRemoteDataSourceImpl(this.apiService);
  final ApiService apiService;

  @override
  Future<Either<DioError, Response<Map<String, dynamic>>>> addMediator(
          {required Mediator mediator, required int courseId}) =>
      apiService.postMethod<Map<String, dynamic>>(
          '${GeneralConstants.host}api/v1/MediatorTC/',
          body: {
            'class_ID': mediator.classID,
            'course_ID': courseId,
            'teacher_ID': mediator.teacherID,
          });

  @override
  Future<Either<DioError, Response<Map<String, dynamic>>>> getMediators(
      {required int classId}) {
    return apiService.getMethod(
      '${GeneralConstants.host}api/v1/MediatorTC/$classId',
    );
  }

  @override
  Future<Either<DioError, Response<Map<String, dynamic>>>> removeMediator(
      {required int mediatorId}) {
    return apiService.deleteMethod(GeneralConstants.host +
        MediatorEndpoints.deleteLink +
        mediatorId.toString());
  }
}
