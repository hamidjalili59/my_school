import 'package:dartz/dartz.dart';
import 'package:my_school/src/features/course/domain/failures/course_failure.dart';
import 'package:my_school/src/features/course/domain/models/course_get_response.dart';
import 'package:my_school/src/features/course/domain/models/course_model/course.dart';
import 'package:my_school/src/features/course/domain/models/course_success_response.dart';

abstract class CourseRepository {
  //
  Future<Either<CourseFailure, CourseSuccessResponse>> addCourse(
      {required Course course});
  //
  Future<Either<CourseFailure, CourseSuccessResponse>> updateCourse({
    required String courseName,
    required int courseId,
  });
  //
  Future<Either<CourseFailure, void>> removeCourse({
    required int courseId,
  });
  //
  Future<Either<CourseFailure, CourseGetResponse>> getCourses({
    required int schoolId,
  });
  //
  Future<Either<CourseFailure, void>> cacheCoursesData({
    required List<Course> courses,
  });
  //
  Future<Either<CourseFailure, CourseGetResponse>> getCachedCourseData();
  //
}
