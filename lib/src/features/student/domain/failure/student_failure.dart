// ignore_for_file: depend_on_referenced_packages
import 'package:database_service/database_service.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_school/src/features/core/failures/failure.dart';

part 'student_failure.freezed.dart';

@freezed
class StudentFailure extends Failure with _$StudentFailure {
  ///
  const factory StudentFailure.missingToken() = _MissingToken;

  ///
  const factory StudentFailure.api(DioException failure) = _Api;
  const factory StudentFailure.nullParam() = _NullParam;
  const factory StudentFailure.database(DatabaseError failure) = _Database;
}
