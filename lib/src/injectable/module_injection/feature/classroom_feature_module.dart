import 'package:api_service/api_service.dart';
import 'package:database_service/database_service.dart';
import 'package:injectable/injectable.dart';
import 'package:my_school/src/features/classroom/data/data_sources/local/classroom_local_data_source.dart';
import 'package:my_school/src/features/classroom/data/data_sources/remote/classroom_remote_data_source.dart';
import 'package:my_school/src/features/classroom/data/repositories/classroom_repository_impl.dart';
import 'package:my_school/src/features/classroom/domain/repositories/classroom_repository.dart';
import 'package:my_school/src/features/classroom/domain/use_cases/add_classroom_use_case.dart';
import 'package:my_school/src/features/classroom/domain/use_cases/cache_classrooms_data_use_case.dart';
import 'package:my_school/src/features/classroom/domain/use_cases/get_cache_classrooms_data_use_case.dart';
import 'package:my_school/src/features/classroom/domain/use_cases/get_classrooms_use_case.dart';
import 'package:my_school/src/features/classroom/domain/use_cases/get_teacher_classroom_use_case.dart';
import 'package:my_school/src/features/classroom/domain/use_cases/remove_classroom_use_case.dart';
import 'package:my_school/src/features/classroom/domain/use_cases/update_classroom_use_case.dart';
import 'package:my_school/src/injectable/injectable.dart';

@module
abstract class ClassroomFeatureModule {
  ClassroomRemoteDataSource get remoteDS => ClassroomRemoteDataSourceImpl(
        getIt.get<ApiService>(),
      );
  ClassroomLocalDataSource get localDS => ClassroomLocalDataSource(
        getIt.get<DatabaseService>(),
      );

  ClassroomRepository get repo => ClassroomRepositoryImpl(remoteDS, localDS);

  AddClassroomUseCase get addClassroomUseCase => AddClassroomUseCase(repo);
  GetClassroomsUseCase get getClassroomsUseCase => GetClassroomsUseCase(repo);
  CacheClassroomsDataUseCase get cacheClassroomDataUseCase =>
      CacheClassroomsDataUseCase(repo);
  GetCachedClassroomsDataUseCase get getCachedClassroomDataUseCase =>
      GetCachedClassroomsDataUseCase(repo);
  GetTeacherClassroomsUseCase get getTeacherClassroomDataUseCase =>
      GetTeacherClassroomsUseCase(repo);
  RemoveClassroomUseCase get removeClassroomUseCase =>
      RemoveClassroomUseCase(repo);
  UpdateClassroomUseCase get updateClassroomUseCase =>
      UpdateClassroomUseCase(repo);
}
