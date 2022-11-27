import 'package:dartz/dartz.dart';
import 'package:my_school/src/features/role_call/domain/failure/rollcall_failure.dart';
import 'package:my_school/src/features/role_call/domain/models/rollcall_get_response.dart';
import 'package:my_school/src/features/role_call/domain/models/rollcall_model.dart';
import 'package:my_school/src/features/role_call/domain/models/rollcall_success_response.dart';

abstract class RollcallRepository {
  //
  Future<Either<RollcallFailure, RollcallSuccessResponse>> addRollcall(
      {required List<Rollcall> rollcall});
  //
  Future<Either<RollcallFailure, RollcallGetResponse>> getRollcalls({
    required int studentId,
  });
  //
  Future<Either<RollcallFailure, void>> cacheRollcallsData({
    required List<Rollcall> rollcalls,
  });
  //
  Future<Either<RollcallFailure, RollcallGetResponse>>
      getCachedRollcallData();
  //
}
