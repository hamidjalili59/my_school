import 'package:dartz/dartz.dart';
import 'package:my_school/src/features/exam/data/data_sources/local/exam_local_data_source.dart';
import 'package:my_school/src/features/exam/data/data_sources/remote/exam_remote_data_source.dart';
import 'package:my_school/src/features/exam/domain/failure/exam_failure.dart';
import 'package:my_school/src/features/exam/domain/models/exam_model.dart';
import 'package:my_school/src/features/exam/domain/models/exam_success_response.dart';
import 'package:my_school/src/features/exam/domain/repositories/exam_repository.dart';
import 'package:my_school/src/features/core/models/base_response.dart';
import 'package:my_school/src/features/exam/domain/models/exam_get_response.dart';

class ExamRepositoryImpl extends ExamRepository {
  final ExamRemoteDataSource _remoteDS;
  final ExamLocalDataSource _localDS;
  final String tokenFieldKey = 'token';

  ExamRepositoryImpl(this._remoteDS, this._localDS);

  @override
  Future<Either<ExamFailure, void>> addExam({required Exam exam}) {
    return _remoteDS.addExam(exam: exam).then(
          (value) => value.fold(
            (l) => left<ExamFailure, void>(ExamFailure.api(l)),
            (r) async {
              return right<ExamFailure, void>(
                null,
              );
            },
          ),
        );
  }

  @override
  Future<Either<ExamFailure, void>> cacheExamsData(
      {required List<Exam> exams}) {
    return _localDS.cacheData(fieldKey: 'exams', value: exams).then(
          (value) => value.fold(
            (l) => left<ExamFailure, void>(ExamFailure.database(l)),
            (r) => right<ExamFailure, void>(null),
          ),
        );
  }

  @override
  Future<Either<ExamFailure, ExamGetResponse>> getCachedExamData() {
    return _localDS.getCachedData(fieldKey: 'exams').then(
          (value) => value.fold(
            (l) => left<ExamFailure, ExamGetResponse>(ExamFailure.database(l)),
            (r) => right<ExamFailure, ExamGetResponse>(
                ExamGetResponse(exams: r ?? [])),
          ),
        );
  }

  @override
  Future<Either<ExamFailure, ExamGetResponse>> getExams(
      {required int classId}) {
    return _remoteDS.getExams(classId: classId).then(
          (value) => value.fold(
            (l) => left<ExamFailure, ExamGetResponse>(
              ExamFailure.api(l),
            ),
            (r) async {
              final examsDataFromServer = ExamGetResponse.fromJson(
                BaseResponse.fromJson(r.data ?? {}).payload,
              );
              return right<ExamFailure, ExamGetResponse>(
                examsDataFromServer,
              );
            },
          ),
        );
  }

  @override
  Future<Either<ExamFailure, void>> removeExam({required int examId}) {
    return _remoteDS.removeExam(examId: examId).then(
          (value) => value.fold(
            (l) => left<ExamFailure, ExamSuccessResponse>(
              ExamFailure.api(l),
            ),
            (r) async {
              final removeExamFromServer = ExamSuccessResponse.fromJson(
                BaseResponse.fromJson(r.data ?? {}).toJson(),
              );
              return right<ExamFailure, ExamSuccessResponse>(
                removeExamFromServer,
              );
            },
          ),
        );
  }

  @override
  Future<Either<ExamFailure, ExamSuccessResponse>> updateExam(
      {required String examDescription,
      required int examId,
      required bool isDone}) {
    return _remoteDS
        .updateExam(
            examId: examId, examDescription: examDescription, isDone: isDone)
        .then(
          (value) => value.fold(
            (l) => left<ExamFailure, ExamSuccessResponse>(
              ExamFailure.api(l),
            ),
            (r) async {
              final updateExamOnServer = ExamSuccessResponse.fromJson(
                BaseResponse.fromJson(r.data ?? {}).toJson(),
              );
              return right<ExamFailure, ExamSuccessResponse>(
                updateExamOnServer,
              );
            },
          ),
        );
  }

  @override
  Future<Either<ExamFailure, ExamGetResponse>> getSingleExam(
      {required int examId}) {
    return _remoteDS.getSingleExam(examId: examId).then(
          (value) => value.fold(
            (l) => left<ExamFailure, ExamGetResponse>(
              ExamFailure.api(l),
            ),
            (r) async {
              final examsDataFromServer = ExamGetResponse.fromJson(
                BaseResponse.fromJson(r.data ?? {}).toJson(),
              );
              return right<ExamFailure, ExamGetResponse>(
                examsDataFromServer,
              );
            },
          ),
        );
  }
}
