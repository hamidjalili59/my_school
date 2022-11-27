import 'package:dartz/dartz.dart';
import 'package:my_school/src/features/core/models/use_case.dart';
import 'package:my_school/src/features/core/models/tuple.dart' as tuple;
import 'package:my_school/src/features/course/domain/failures/course_failure.dart';
import 'package:my_school/src/features/course/domain/models/course_success_response.dart';
import 'package:my_school/src/features/course/domain/repositories/course_repository.dart';

class UpdateCourseUseCase
    implements UseCase<CourseFailure, CourseSuccessResponse, tuple.Tuple2<int, String>> {
  const UpdateCourseUseCase(this.repo);

  final CourseRepository repo;

  @override
  Future<Either<CourseFailure, CourseSuccessResponse>> call({tuple.Tuple2<int, String>? param}) =>
      (param == null)
          ? Future.value(left(const CourseFailure.nullParam()))
          : repo.updateCourse(courseId: param.value1, courseName: param.value2);
}
