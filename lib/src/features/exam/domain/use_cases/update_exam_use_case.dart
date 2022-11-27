import 'package:dartz/dartz.dart';
import 'package:my_school/src/features/core/models/use_case.dart';
import 'package:my_school/src/features/core/models/tuple.dart' as tuple;
import 'package:my_school/src/features/exam/domain/failure/exam_failure.dart';
import 'package:my_school/src/features/exam/domain/models/exam_success_response.dart';
import 'package:my_school/src/features/exam/domain/repositories/exam_repository.dart';

class UpdateExamUseCase
    implements
        UseCase<ExamFailure, ExamSuccessResponse,
            tuple.Tuple3<String, int, bool>> {
  const UpdateExamUseCase(this.repo);

  final ExamRepository repo;

  @override
  Future<Either<ExamFailure, ExamSuccessResponse>> call(
          {tuple.Tuple3<String, int, bool>? param}) =>
      (param == null)
          ? Future.value(left(const ExamFailure.nullParam()))
          : repo.updateExam(
              examDescription: param.value1,
              examId: param.value2,
              isDone: param.value3);
}
