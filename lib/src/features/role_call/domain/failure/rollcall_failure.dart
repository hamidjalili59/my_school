// ignore_for_file: depend_on_referenced_packages
import 'package:database_service/database_service.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_school/src/features/core/failures/failure.dart';

part 'rollcall_failure.freezed.dart';

@freezed
class RollcallFailure extends Failure with _$RollcallFailure {
  ///
  const factory RollcallFailure.missingToken() = _MissingToken;

  ///
  const factory RollcallFailure.api(DioException failure) = _Api;
  const factory RollcallFailure.nullParam() = _NullParam;
  const factory RollcallFailure.database(DatabaseError failure) = _Database;
}
