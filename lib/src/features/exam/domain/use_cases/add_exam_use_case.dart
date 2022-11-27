import 'package:dartz/dartz.dart';
import 'package:my_school/src/features/core/models/use_case.dart';
import 'package:my_school/src/features/core/models/tuple.dart' as tuple;
import 'package:my_school/src/features/exam/domain/failure/exam_failure.dart';
import 'package:my_school/src/features/exam/domain/models/exam_model.dart';
import 'package:my_school/src/features/exam/domain/models/exam_success_response.dart';
import 'package:my_school/src/features/exam/domain/repositories/exam_repository.dart';

class AddExamUseCase
    implements UseCase<ExamFailure, ExamSuccessResponse, tuple.Tuple1<Exam>> {
  const AddExamUseCase(this.repo);

  final ExamRepository repo;

  @override
  Future<Either<ExamFailure, ExamSuccessResponse>> call({tuple.Tuple1<Exam>? param}) =>
      (param == null)
          ? Future.value(left(const ExamFailure.nullParam()))
          : repo.addExam(exam: param.value1);
}
