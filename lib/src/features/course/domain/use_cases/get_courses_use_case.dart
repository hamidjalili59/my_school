import 'package:dartz/dartz.dart';
import 'package:my_school/src/features/core/models/use_case.dart';
import 'package:my_school/src/features/core/models/tuple.dart' as tuple;
import 'package:my_school/src/features/course/domain/failures/course_failure.dart';
import 'package:my_school/src/features/course/domain/models/course_get_response.dart';
import 'package:my_school/src/features/course/domain/repositories/course_repository.dart';

class GetCoursesUseCase
    implements UseCase<CourseFailure, CourseGetResponse, tuple.Tuple1<int>> {
  const GetCoursesUseCase(this.repo);

  final CourseRepository repo;

  @override
  Future<Either<CourseFailure, CourseGetResponse>> call(
          {tuple.Tuple1<int>? param}) =>
      (param == null)
          ? Future.value(left(const CourseFailure.nullParam()))
          : repo.getCourses(schoolId: param.value1);
}
