import 'package:dartz/dartz.dart';
import 'package:my_school/src/features/student/data/data_sources/local/student_local_data_source.dart';
import 'package:my_school/src/features/student/data/data_sources/remote/student_remote_data_source.dart';
import 'package:my_school/src/features/student/domain/failure/student_failure.dart';
import 'package:my_school/src/features/student/domain/models/student_get_response.dart';
import 'package:my_school/src/features/student/domain/models/student_success_response.dart';
import 'package:my_school/src/features/student/domain/models/student_model/student.dart';
import 'package:my_school/src/features/student/domain/repositories/student_repository.dart';
import 'package:my_school/src/features/core/models/base_response.dart';

class StudentRepositoryImpl extends StudentRepository {
  final StudentRemoteDataSource _remoteDS;
  final StudentLocalDataSource _localDS;
  final String tokenFieldKey = 'token';

  StudentRepositoryImpl(this._remoteDS, this._localDS);

  @override
  Future<Either<StudentFailure, StudentSuccessResponse>> addStudent(
      {required Student student, required String parentName}) {
    return _remoteDS.addStudent(student: student, parentName: parentName).then(
          (value) => value.fold(
            (l) => left<StudentFailure, StudentSuccessResponse>(
                StudentFailure.api(l)),
            (r) async {
              try {
                final studentAddSuccessResponse =
                    StudentSuccessResponse.fromJson(
                  BaseResponse.fromJson(r.data ?? {}).payload,
                );
                return right<StudentFailure, StudentSuccessResponse>(
                  studentAddSuccessResponse,
                );
              } catch (e) {
                return left<StudentFailure, StudentSuccessResponse>(
                    const StudentFailure.nullParam());
              }
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
              try {
                final studentsDataFromServer = StudentGetResponse.fromJson(
                  BaseResponse.fromJson(r.data ?? {}).payload,
                );
                return right<StudentFailure, StudentGetResponse>(
                  studentsDataFromServer,
                );
              } catch (e) {
                return left<StudentFailure, StudentGetResponse>(
                    const StudentFailure.nullParam());
              }
            },
          ),
        );
  }

  @override
  Future<Either<StudentFailure, StudentSuccessResponse>> removeStudent(
      {required int studentId}) {
    return _remoteDS.removeStudent(studentId: studentId).then(
          (value) => value.fold(
            (l) => left<StudentFailure, StudentSuccessResponse>(
              StudentFailure.api(l),
            ),
            (r) async {
              try {
                final removeStudentFromServer = StudentSuccessResponse.fromJson(
                  BaseResponse.fromJson(r.data ?? {}).payload,
                );
                return right<StudentFailure, StudentSuccessResponse>(
                  removeStudentFromServer,
                );
              } catch (e) {
                return left<StudentFailure, StudentSuccessResponse>(
                    const StudentFailure.nullParam());
              }
            },
          ),
        );
  }

  @override
  Future<Either<StudentFailure, StudentSuccessResponse>> updateStudent({
    required Student student,
  }) {
    return _remoteDS
        .updateStudent(
          student: student,
        )
        .then(
          (value) => value.fold(
            (l) => left<StudentFailure, StudentSuccessResponse>(
              StudentFailure.api(l),
            ),
            (r) async {
              try {
                final updateStudentOnServer = StudentSuccessResponse.fromJson(
                  BaseResponse.fromJson(r.data ?? {}).payload,
                );
                return right<StudentFailure, StudentSuccessResponse>(
                  updateStudentOnServer,
                );
              } catch (e) {
                return left<StudentFailure, StudentSuccessResponse>(
                    const StudentFailure.nullParam());
              }
            },
          ),
        );
  }

  @override
  Future<Either<StudentFailure, StudentGetResponse>> getStudentsParent(
      {required double phonenumber}) {
    return _remoteDS.getStudentsParent(phonenumber: phonenumber).then(
          (value) => value.fold(
            (l) => left<StudentFailure, StudentGetResponse>(
              StudentFailure.api(l),
            ),
            (r) async {
              final studentsDataFromServer = StudentGetResponse.fromJson(
                BaseResponse.fromJson(r.data ?? {}).payload,
              );
              return right<StudentFailure, StudentGetResponse>(
                studentsDataFromServer,
              );
            },
          ),
        );
  }
}
