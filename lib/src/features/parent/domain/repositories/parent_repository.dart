import 'package:dartz/dartz.dart';
import 'package:my_school/src/features/parent/domain/failure/parent_failure.dart';
import 'package:my_school/src/features/parent/domain/models/parent_get_response.dart';
import 'package:my_school/src/features/parent/domain/models/parent_success_response.dart';
import 'package:my_school/src/features/parent/domain/models/parent_model/parent.dart';

abstract class ParentRepository {
  //
  Future<Either<ParentFailure, ParentSuccessResponse>> updateParent({
    required int schoolId,
    required int parentId,
    required String name,
    required double phoneNumber,
  });
  //
  Future<Either<ParentFailure, ParentGetResponse>> getParent({
    required int parentId,
  });
  //
  Future<Either<ParentFailure, void>> cacheParentsData({
    required Parent parent,
  });
  //
  Future<Either<ParentFailure, ParentGetResponse>>
      getCachedParentData();
  //
}
