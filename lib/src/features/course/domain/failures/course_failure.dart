// ignore_for_file: depend_on_referenced_packages

import 'package:database_service/database_service.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_school/src/features/core/failures/failure.dart';

part 'course_failure.freezed.dart';

@freezed
class CourseFailure extends Failure with _$CourseFailure {
  ///
  const factory CourseFailure.missingToken() = _MissingToken;

  ///
  const factory CourseFailure.api(DioException failure) = _Api;
  const factory CourseFailure.nullParam() = _NullParam;
  const factory CourseFailure.database(DatabaseError failure) = _Database;
}
