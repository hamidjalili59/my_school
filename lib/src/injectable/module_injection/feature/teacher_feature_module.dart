import 'package:api_service/api_service.dart';
import 'package:database_service/database_service.dart';
import 'package:injectable/injectable.dart';
import 'package:my_school/src/features/teacher/data/data_sources/local/teacher_local_data_source.dart';
import 'package:my_school/src/features/teacher/data/data_sources/remote/teacher_remote_data_source.dart';
import 'package:my_school/src/features/teacher/data/repositories/teacher_repository_impl.dart';
import 'package:my_school/src/features/teacher/domain/repositories/teacher_repository.dart';
import 'package:my_school/src/features/teacher/domain/use_cases/add_teacher_use_case.dart';
import 'package:my_school/src/features/teacher/domain/use_cases/cache_teacher_data_use_case.dart';
import 'package:my_school/src/features/teacher/domain/use_cases/get_cached_teacher_data_use_case.dart';
import 'package:my_school/src/features/teacher/domain/use_cases/get_teachers_use_case.dart';
import 'package:my_school/src/features/teacher/domain/use_cases/remove_teacher_use_case.dart';
import 'package:my_school/src/features/teacher/domain/use_cases/update_teacher_use_case.dart';
import 'package:my_school/src/injectable/injectable.dart';

@module
abstract class TeacherFeatureModule {
  TeacherRemoteDataSource get remoteDS => TeacherRemoteDataSourceImpl(
        getIt.get<ApiService>(),
      );
  TeacherLocalDataSource get localDS => TeacherLocalDataSource(
        getIt.get<DatabaseService>(),
      );

  TeacherRepository get repo => TeacherRepositoryImpl(remoteDS, localDS);

  AddTeacherUseCase get getTeacherUseCase => AddTeacherUseCase(repo);
  CacheTeacherDataUseCase get cacheTeacherDataUseCase =>
      CacheTeacherDataUseCase(repo);
  GetCachedTeacherDataUseCase get getCachedTeacherDataUseCase =>
      GetCachedTeacherDataUseCase(repo);
  GetTeacherUseCase get getTeachersUseCase => GetTeacherUseCase(repo);
  RemoveTeacherUseCase get removeTeacherUseCase => RemoveTeacherUseCase(repo);
  UpdateTeacherUseCase get updateTeacherUseCase => UpdateTeacherUseCase(repo);
}
