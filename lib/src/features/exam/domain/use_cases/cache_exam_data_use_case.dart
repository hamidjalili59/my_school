import 'package:dartz/dartz.dart';
import 'package:my_school/src/features/core/models/use_case.dart';
import 'package:my_school/src/features/core/models/tuple.dart' as tuple;
import 'package:my_school/src/features/exam/domain/failure/exam_failure.dart';
import 'package:my_school/src/features/exam/domain/models/exam_model.dart';
import 'package:my_school/src/features/exam/domain/repositories/exam_repository.dart';

class CacheExamDataUseCase implements UseCase<ExamFailure, void, tuple.Tuple1<List<Exam>>> {
  const CacheExamDataUseCase(this.repo);

  final ExamRepository repo;

  @override
  Future<Either<ExamFailure, void>> call({tuple.Tuple1<List<Exam>>? param}) => (param == null)
      ? Future.value(left(const ExamFailure.nullParam()))
      : repo.cacheExamsData(exams: param.value1);
}
