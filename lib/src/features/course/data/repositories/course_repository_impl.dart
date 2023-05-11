import 'package:dartz/dartz.dart';
import 'package:my_school/src/features/auth/domain/models/otp_handshake_response.dart';
import 'package:my_school/src/features/core/models/base_response.dart';
import 'package:my_school/src/features/course/data/data_sources/local/course_local_data_source.dart';
import 'package:my_school/src/features/course/data/data_sources/remote/course_remote_data_sourse.dart';
import 'package:my_school/src/features/course/domain/failures/course_failure.dart';
import 'package:my_school/src/features/course/domain/models/course_success_response.dart';
import 'package:my_school/src/features/course/domain/models/course_model/course.dart';
import 'package:my_school/src/features/course/domain/models/course_get_response.dart';
import 'package:my_school/src/features/course/domain/repositories/course_repository.dart';
import 'package:my_school/src/injectable/injectable.dart';

class CourseRepositoryImpl extends CourseRepository {
  final CourseRemoteDataSource _remoteDS;
  final CourseLocalDataSource _localDS;
  final String tokenFieldKey = 'token';

  CourseRepositoryImpl(this._remoteDS, this._localDS);

  @override
  Future<Either<CourseFailure, CourseSuccessResponse>> addCourse(
      {required String courseName}) {
    return _remoteDS
        .addCourse(
          courseName: courseName,
          schoolId: int.parse(
            getIt.get<OtpHandshakeResponse>().token,
          ),
        )
        .then(
          (value) => value.fold(
            (l) => left<CourseFailure, CourseSuccessResponse>(
                CourseFailure.api(l)),
            (r) async {
              final courseAddSuccessResponse = CourseSuccessResponse.fromJson(
                BaseResponse.fromJson(r.data ?? {}).payload,
              );
              return right<CourseFailure, CourseSuccessResponse>(
                courseAddSuccessResponse,
              );
            },
          ),
        );
  }

  @override
  Future<Either<CourseFailure, void>> cacheCoursesData(
      {required List<Course> courses}) {
    return _localDS.cacheData(fieldKey: 'courses', value: courses).then(
          (value) => value.fold(
            (l) => left<CourseFailure, void>(CourseFailure.database(l)),
            (r) => right<CourseFailure, void>(null),
          ),
        );
  }

  @override
  Future<Either<CourseFailure, CourseGetResponse>> getCachedCourseData() {
    return _localDS.getCachedData(fieldKey: 'courses').then(
          (value) => value.fold(
            (l) => left<CourseFailure, CourseGetResponse>(
                CourseFailure.database(l)),
            (r) => right<CourseFailure, CourseGetResponse>(
                CourseGetResponse(courses: r ?? [])),
          ),
        );
  }

  @override
  Future<Either<CourseFailure, CourseGetResponse>> getCourses(
      {required int schoolId}) {
    return _remoteDS.getCourses(schoolId: schoolId).then(
          (value) => value.fold(
            (l) => left<CourseFailure, CourseGetResponse>(
              CourseFailure.api(l),
            ),
            (r) async {
              final coursesDataFromServer = CourseGetResponse.fromJson(
                BaseResponse.fromJson(r.data ?? {}).payload,
              );
              return right<CourseFailure, CourseGetResponse>(
                coursesDataFromServer,
              );
            },
          ),
        );
  }

  @override
  Future<Either<CourseFailure, void>> removeCourse({required int courseId}) {
    return _remoteDS.removeCourse(courseId: courseId).then(
          (value) => value.fold(
            (l) => left<CourseFailure, CourseSuccessResponse>(
              CourseFailure.api(l),
            ),
            (r) async {
              final removeCourseFromServer = CourseSuccessResponse.fromJson(
                BaseResponse.fromJson(r.data ?? {}).toJson(),
              );
              return right<CourseFailure, CourseSuccessResponse>(
                removeCourseFromServer,
              );
            },
          ),
        );
  }

  @override
  Future<Either<CourseFailure, CourseSuccessResponse>> updateCourse(
      {required String courseName, required int courseId}) {
    return _remoteDS
        .updateCourse(courseId: courseId, courseName: courseName)
        .then(
          (value) => value.fold(
            (l) => left<CourseFailure, CourseSuccessResponse>(
              CourseFailure.api(l),
            ),
            (r) async {
              final updateCourseOnServer = CourseSuccessResponse.fromJson(
                BaseResponse.fromJson(r.data ?? {}).payload,
              );
              return right<CourseFailure, CourseSuccessResponse>(
                updateCourseOnServer,
              );
            },
          ),
        );
  }
}
