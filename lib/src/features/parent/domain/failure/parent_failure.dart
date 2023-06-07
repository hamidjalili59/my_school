// ignore_for_file: depend_on_referenced_packages
import 'package:database_service/database_service.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_school/src/features/core/failures/failure.dart';

part 'parent_failure.freezed.dart';

@freezed
class ParentFailure extends Failure with _$ParentFailure {
  ///
  const factory ParentFailure.missingToken() = _MissingToken;

  ///
  const factory ParentFailure.api(DioException failure) = _Api;
  const factory ParentFailure.nullParam() = _NullParam;
  const factory ParentFailure.database(DatabaseError failure) = _Database;
}
