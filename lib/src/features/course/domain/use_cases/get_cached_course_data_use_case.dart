import 'package:dartz/dartz.dart';
import 'package:my_school/src/features/core/models/use_case.dart';
import 'package:my_school/src/features/core/models/tuple.dart' as tuple;
import 'package:my_school/src/features/course/domain/failures/course_failure.dart';
import 'package:my_school/src/features/course/domain/repositories/course_repository.dart';

class GetCachedCourseDataUseCase
    implements UseCase<CourseFailure, void, tuple.Tuple0> {
  const GetCachedCourseDataUseCase(this.repo);

  final CourseRepository repo;

  @override
  Future<Either<CourseFailure, void>> call({tuple.Tuple0? param}) =>
      (param == null)
          ? Future.value(left(const CourseFailure.nullParam()))
          : repo.getCachedCourseData();
}
