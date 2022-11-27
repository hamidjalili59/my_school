import 'package:dartz/dartz.dart';
import 'package:my_school/src/features/core/models/use_case.dart';
import 'package:my_school/src/features/core/models/tuple.dart' as tuple;
import 'package:my_school/src/features/exam/domain/failure/exam_failure.dart';
import 'package:my_school/src/features/exam/domain/models/exam_get_response.dart';
import 'package:my_school/src/features/exam/domain/repositories/exam_repository.dart';

class GetCachedExamDataUseCase
    implements UseCase<ExamFailure, ExamGetResponse, tuple.Tuple0> {
  const GetCachedExamDataUseCase(this.repo);

  final ExamRepository repo;

  @override
  Future<Either<ExamFailure, ExamGetResponse>> call({tuple.Tuple0? param}) =>
      (param == null)
          ? Future.value(left(const ExamFailure.nullParam()))
          : repo.getCachedExamData();
}
