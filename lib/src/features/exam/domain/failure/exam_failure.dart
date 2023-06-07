// ignore_for_file: depend_on_referenced_packages
import 'package:database_service/database_service.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_school/src/features/core/failures/failure.dart';

part 'exam_failure.freezed.dart';

@freezed
class ExamFailure extends Failure with _$ExamFailure {
  ///
  const factory ExamFailure.missingToken() = _MissingToken;

  ///
  const factory ExamFailure.api(DioException failure) = _Api;
  const factory ExamFailure.nullParam() = _NullParam;
  const factory ExamFailure.database(DatabaseError failure) = _Database;
}
