import 'package:dartz/dartz.dart';
import 'package:my_school/src/features/student/data/data_sources/local/student_local_data_source.dart';
import 'package:my_school/src/features/student/data/data_sources/remote/student_remote_data_source.dart';
import 'package:my_school/src/features/student/domain/failure/student_failure.dart';
import 'package:my_school/src/features/student/domain/models/student_get_response.dart';
import 'package:my_school/src/features/student/domain/models/student_success_response.dart';
import 'package:my_school/src/features/student/domain/models/student_model/student.dart';
import 'package:my_school/src/features/student/domain/repositories/student_repository.dart';
import 'package:my_school/src/features/core/models/base_response.dart';

//TODO: یک ابجکت برای درس ها داخل دیپندنسی ریجیستر کنم و داخل توسط فانکشن های خود  پرش کنم
class StudentRepositoryImpl extends StudentRepository {
  final StudentRemoteDataSource _remoteDS;
  final StudentLocalDataSource _localDS;
  final String tokenFieldKey = 'token';

  StudentRepositoryImpl(this._remoteDS, this._localDS);

  @override
  Future<Either<StudentFailure, StudentSuccessResponse>> addStudent(
      {required Student student}) {
    return _remoteDS.addStudent(student: student).then(
          (value) => value.fold(
            (l) => left<StudentFailure, StudentSuccessResponse>(
                StudentFailure.api(l)),
            (r) async {
              final studentAddSuccessResponse = StudentSuccessResponse.fromJson(
                BaseResponse.fromJson(r.data ?? {}).toJson(),
              );
              return right<StudentFailure, StudentSuccessResponse>(
                studentAddSuccessResponse,
              );
            },
          ),
        );
  }

  @override
  Future<Either<StudentFailure, void>> cacheStudentsData(
      {required List<Student> students}) {
    return _localDS.cacheData(fieldKey: 'students', value: students).then(
          (value) => value.fold(
            (l) => left<StudentFailure, void>(StudentFailure.database(l)),
            (r) => right<StudentFailure, void>(null),
          ),
        );
  }

  @override
  Future<Either<StudentFailure, StudentGetResponse>> getCachedStudentData() {
    return _localDS.getCachedData(fieldKey: 'students').then(
          (value) => value.fold(
            (l) => left<StudentFailure, StudentGetResponse>(
                StudentFailure.database(l)),
            (r) => right<StudentFailure, StudentGetResponse>(
                StudentGetResponse(students: r ?? [])),
          ),
        );
  }

  @override
  Future<Either<StudentFailure, StudentGetResponse>> getStudents(
      {required int classId}) {
    return _remoteDS.getStudents(classId: classId).then(
          (value) => value.fold(
            (l) => left<StudentFailure, StudentGetResponse>(
              StudentFailure.api(l),
            ),
            (r) async {
              final studentsDataFromServer = StudentGetResponse.fromJson(
                BaseResponse.fromJson(r.data ?? {}).toJson(),
              );
              return right<StudentFailure, StudentGetResponse>(
                studentsDataFromServer,
              );
            },
          ),
        );
  }

  @override
  Future<Either<StudentFailure, void>> removeStudent({required int studentId}) {
    return _remoteDS.removeStudent(studentId: studentId).then(
          (value) => value.fold(
            (l) => left<StudentFailure, StudentSuccessResponse>(
              StudentFailure.api(l),
            ),
            (r) async {
              final removeStudentFromServer = StudentSuccessResponse.fromJson(
                BaseResponse.fromJson(r.data ?? {}).toJson(),
              );
              return right<StudentFailure, StudentSuccessResponse>(
                removeStudentFromServer,
              );
            },
          ),
        );
  }

  @override
  Future<Either<StudentFailure, StudentSuccessResponse>> updateStudent({
    required int classId,
    required int studentId,
    required String name,
    required double phoneNumber,
  }) {
    return _remoteDS
        .updateStudent(
          studentId: studentId,
          classId: classId,
          phoneNumber: phoneNumber,
          name: name,
        )
        .then(
          (value) => value.fold(
            (l) => left<StudentFailure, StudentSuccessResponse>(
              StudentFailure.api(l),
            ),
            (r) async {
              final updateStudentOnServer = StudentSuccessResponse.fromJson(
                BaseResponse.fromJson(r.data ?? {}).toJson(),
              );
              return right<StudentFailure, StudentSuccessResponse>(
                updateStudentOnServer,
              );
            },
          ),
        );
  }
}
