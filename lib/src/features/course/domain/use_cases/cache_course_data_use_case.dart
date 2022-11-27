import 'package:dartz/dartz.dart';
import 'package:my_school/src/features/core/models/use_case.dart';
import 'package:my_school/src/features/course/domain/failures/course_failure.dart';
import 'package:my_school/src/features/course/domain/models/course_model/course.dart';
import 'package:my_school/src/features/core/models/tuple.dart' as tuple;
import 'package:my_school/src/features/course/domain/repositories/course_repository.dart';

class CacheCourseDataUseCase
    implements UseCase<CourseFailure, void, tuple.Tuple1<List<Course>>> {
  const CacheCourseDataUseCase(this.repo);

  final CourseRepository repo;

  @override
  Future<Either<CourseFailure, void>> call(
          {tuple.Tuple1<List<Course>>? param}) =>
      (param == null)
          ? Future.value(left(const CourseFailure.nullParam()))
          : repo.cacheCoursesData(courses: param.value1);
}
