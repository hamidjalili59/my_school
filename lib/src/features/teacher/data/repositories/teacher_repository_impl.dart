import 'package:dartz/dartz.dart';
import 'package:my_school/src/features/teacher/data/data_sources/local/teacher_local_data_source.dart';
import 'package:my_school/src/features/teacher/data/data_sources/remote/teacher_remote_data_source.dart';
import 'package:my_school/src/features/teacher/domain/failure/teacher_failure.dart';
import 'package:my_school/src/features/teacher/domain/models/teacher.dart';
import 'package:my_school/src/features/teacher/domain/models/teacher_success_response.dart';
import 'package:my_school/src/features/teacher/domain/repositories/teacher_repository.dart';
import 'package:my_school/src/features/core/models/base_response.dart';
import 'package:my_school/src/features/teacher/domain/models/teacher_get_response.dart';

//TODO: یک ابجکت برای درس ها داخل دیپندنسی ریجیستر کنم و داخل توسط فانکشن های خود  پرش کنم
class TeacherRepositoryImpl extends TeacherRepository {
  final TeacherRemoteDataSource _remoteDS;
  final TeacherLocalDataSource _localDS;
  final String tokenFieldKey = 'token';

  TeacherRepositoryImpl(this._remoteDS, this._localDS);

  @override
  Future<Either<TeacherFailure, TeacherSuccessResponse>> addTeacher(
      {required Teacher teacher}) {
    return _remoteDS.addTeacher(teacher: teacher).then(
          (value) => value.fold(
            (l) => left<TeacherFailure, TeacherSuccessResponse>(
                TeacherFailure.api(l)),
            (r) async {
              final teacherAddSuccessResponse = TeacherSuccessResponse.fromJson(
                BaseResponse.fromJson(r.data ?? {}).payload,
              );
              return right<TeacherFailure, TeacherSuccessResponse>(
                teacherAddSuccessResponse,
              );
            },
          ),
        );
  }

  @override
  Future<Either<TeacherFailure, void>> cacheTeachersData(
      {required List<Teacher> teachers}) {
    return _localDS.cacheData(fieldKey: 'teachers', value: teachers).then(
          (value) => value.fold(
            (l) => left<TeacherFailure, void>(TeacherFailure.database(l)),
            (r) => right<TeacherFailure, void>(null),
          ),
        );
  }

  @override
  Future<Either<TeacherFailure, TeacherGetResponse>> getCachedTeacherData() {
    return _localDS.getCachedData(fieldKey: 'teachers').then(
          (value) => value.fold(
            (l) => left<TeacherFailure, TeacherGetResponse>(
                TeacherFailure.database(l)),
            (r) => right<TeacherFailure, TeacherGetResponse>(
                TeacherGetResponse(teachers: r ?? [])),
          ),
        );
  }

  @override
  Future<Either<TeacherFailure, TeacherGetResponse>> getTeachers(
      {required int schoolId}) {
    return _remoteDS.getTeachers(schoolId: schoolId).then(
          (value) => value.fold(
            (l) => left<TeacherFailure, TeacherGetResponse>(
              TeacherFailure.api(l),
            ),
            (r) async {
              final teachersDataFromServer = TeacherGetResponse.fromJson(
                BaseResponse.fromJson(r.data ?? {}).payload,
              );
              return right<TeacherFailure, TeacherGetResponse>(
                teachersDataFromServer,
              );
            },
          ),
        );
  }

  @override
  Future<Either<TeacherFailure, void>> removeTeacher({required int teacherId}) {
    return _remoteDS.removeTeacher(teacherId: teacherId).then(
          (value) => value.fold(
            (l) => left<TeacherFailure, TeacherSuccessResponse>(
              TeacherFailure.api(l),
            ),
            (r) async {
              final removeTeacherFromServer = TeacherSuccessResponse.fromJson(
                BaseResponse.fromJson(r.data ?? {}).toJson(),
              );
              return right<TeacherFailure, TeacherSuccessResponse>(
                removeTeacherFromServer,
              );
            },
          ),
        );
  }

  @override
  Future<Either<TeacherFailure, TeacherSuccessResponse>> updateTeacher(
      {required String name,
      required int teacherId,
      required double phoneNumber}) {
    return _remoteDS
        .updateTeacher(
            teacherId: teacherId, phoneNumber: phoneNumber, name: name)
        .then(
          (value) => value.fold(
            (l) => left<TeacherFailure, TeacherSuccessResponse>(
              TeacherFailure.api(l),
            ),
            (r) async {
              final updateTeacherOnServer = TeacherSuccessResponse.fromJson(
                BaseResponse.fromJson(r.data ?? {}).toJson(),
              );
              return right<TeacherFailure, TeacherSuccessResponse>(
                updateTeacherOnServer,
              );
            },
          ),
        );
  }
}
