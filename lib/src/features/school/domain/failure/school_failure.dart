// ignore_for_file: depend_on_referenced_packages
import 'package:database_service/database_service.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_school/src/features/core/failures/failure.dart';

part 'school_failure.freezed.dart';

@freezed
class SchoolFailure extends Failure with _$SchoolFailure {
  ///
  const factory SchoolFailure.missingToken() = _MissingToken;

  ///
  const factory SchoolFailure.api(DioException failure) = _Api;
  const factory SchoolFailure.nullParam() = _NullParam;
  const factory SchoolFailure.database(DatabaseError failure) = _Database;
}
