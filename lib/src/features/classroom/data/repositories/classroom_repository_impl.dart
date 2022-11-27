import 'package:dartz/dartz.dart';
import 'package:my_school/src/features/classroom/data/data_sources/local/classroom_local_data_source.dart';
import 'package:my_school/src/features/classroom/data/data_sources/remote/classroom_remote_data_source.dart';
import 'package:my_school/src/features/classroom/domain/failure/classroom_failure.dart';
import 'package:my_school/src/features/classroom/domain/models/classroom_model.dart';
import 'package:my_school/src/features/classroom/domain/models/classroom_success_response.dart';
import 'package:my_school/src/features/classroom/domain/repositories/classroom_repository.dart';
import 'package:my_school/src/features/core/models/base_response.dart';
import 'package:my_school/src/features/classroom/domain/models/classroom_get_response.dart';

//TODO: یک ابجکت برای درس ها داخل دیپندنسی ریجیستر کنم و داخل توسط فانکشن های خود  پرش کنم
class ClassroomRepositoryImpl extends ClassroomRepository {
  final ClassroomRemoteDataSource _remoteDS;
  final ClassroomLocalDataSource _localDS;
  final String tokenFieldKey = 'token';

  ClassroomRepositoryImpl(this._remoteDS, this._localDS);

  @override
  Future<Either<ClassroomFailure, ClassroomSuccessResponse>> addClassroom(
      {required Classroom classroom}) {
    return _remoteDS.addClass(classroom: classroom).then(
          (value) => value.fold(
            (l) => left<ClassroomFailure, ClassroomSuccessResponse>(
                ClassroomFailure.api(l)),
            (r) async {
              final classroomAddSuccessResponse =
                  ClassroomSuccessResponse.fromJson(
                BaseResponse.fromJson(r.data ?? {}).toJson(),
              );
              return right<ClassroomFailure, ClassroomSuccessResponse>(
                classroomAddSuccessResponse,
              );
            },
          ),
        );
  }

  @override
  Future<Either<ClassroomFailure, void>> cacheClassroomsData(
      {required List<Classroom> classrooms}) {
    return _localDS.cacheData(fieldKey: 'classrooms', value: classrooms).then(
          (value) => value.fold(
            (l) => left<ClassroomFailure, void>(ClassroomFailure.database(l)),
            (r) => right<ClassroomFailure, void>(null),
          ),
        );
  }

  @override
  Future<Either<ClassroomFailure, ClassroomGetResponse>>
      getCachedClassroomData() {
    return _localDS.getCachedData(fieldKey: 'classrooms').then(
          (value) => value.fold(
            (l) => left<ClassroomFailure, ClassroomGetResponse>(
                ClassroomFailure.database(l)),
            (r) => right<ClassroomFailure, ClassroomGetResponse>(
                ClassroomGetResponse(classrooms: r ?? [])),
          ),
        );
  }

  @override
  Future<Either<ClassroomFailure, ClassroomGetResponse>> getClassrooms(
      {required int schoolId}) {
    return _remoteDS.getClasses(schoolId: schoolId).then(
          (value) => value.fold(
            (l) => left<ClassroomFailure, ClassroomGetResponse>(
              ClassroomFailure.api(l),
            ),
            (r) async {
              final classroomsDataFromServer = ClassroomGetResponse.fromJson(
                BaseResponse.fromJson(r.data ?? {}).toJson(),
              );
              return right<ClassroomFailure, ClassroomGetResponse>(
                classroomsDataFromServer,
              );
            },
          ),
        );
  }

  @override
  Future<Either<ClassroomFailure, void>> removeClassroom(
      {required int classroomId}) {
    return _remoteDS.removeClass(classId: classroomId).then(
          (value) => value.fold(
            (l) => left<ClassroomFailure, ClassroomSuccessResponse>(
              ClassroomFailure.api(l),
            ),
            (r) async {
              final removeClassroomFromServer =
                  ClassroomSuccessResponse.fromJson(
                BaseResponse.fromJson(r.data ?? {}).toJson(),
              );
              return right<ClassroomFailure, ClassroomSuccessResponse>(
                removeClassroomFromServer,
              );
            },
          ),
        );
  }

  @override
  Future<Either<ClassroomFailure, ClassroomSuccessResponse>> updateClassroom(
      {required String classroomName, required int classroomId}) {
    return _remoteDS
        .updateClass(classroomId: classroomId, classroomName: classroomName)
        .then(
          (value) => value.fold(
            (l) => left<ClassroomFailure, ClassroomSuccessResponse>(
              ClassroomFailure.api(l),
            ),
            (r) async {
              final updateClassroomOnServer = ClassroomSuccessResponse.fromJson(
                BaseResponse.fromJson(r.data ?? {}).toJson(),
              );
              return right<ClassroomFailure, ClassroomSuccessResponse>(
                updateClassroomOnServer,
              );
            },
          ),
        );
  }
}
