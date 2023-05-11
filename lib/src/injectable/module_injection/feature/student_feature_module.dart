import 'package:api_service/api_service.dart';
import 'package:database_service/database_service.dart';
import 'package:injectable/injectable.dart';
import 'package:my_school/src/features/student/data/data_sources/local/student_local_data_source.dart';
import 'package:my_school/src/features/student/data/data_sources/remote/student_remote_data_source.dart';
import 'package:my_school/src/features/student/data/repositories/student_repository_impl.dart';
import 'package:my_school/src/features/student/domain/repositories/student_repository.dart';
import 'package:my_school/src/features/student/domain/use_cases/add_student_use_case.dart';
import 'package:my_school/src/features/student/domain/use_cases/cache_student_data_use_case.dart';
import 'package:my_school/src/features/student/domain/use_cases/get_cached_student_data_use_case.dart';
import 'package:my_school/src/features/student/domain/use_cases/get_students_parent_use_case.dart';
import 'package:my_school/src/features/student/domain/use_cases/get_students_use_case.dart';
import 'package:my_school/src/features/student/domain/use_cases/remove_student_use_case.dart';
import 'package:my_school/src/features/student/domain/use_cases/update_student_use_case.dart';
import 'package:my_school/src/injectable/injectable.dart';

@module
abstract class StudentFeatureModule {
  StudentRemoteDataSource get remoteDS => StudentRemoteDataSourceImpl(
        getIt.get<ApiService>(),
      );
  StudentLocalDataSource get localDS => StudentLocalDataSource(
        getIt.get<DatabaseService>(),
      );

  StudentRepository get repo => StudentRepositoryImpl(remoteDS, localDS);

  AddStudentUseCase get getStudentUseCase => AddStudentUseCase(repo);
  CacheStudentDataUseCase get cacheStudentDataUseCase =>
      CacheStudentDataUseCase(repo);
  GetCachedStudentDataUseCase get getCachedStudentDataUseCase =>
      GetCachedStudentDataUseCase(repo);
  GetStudentParentUseCase get getStudentParentUseCase =>
      GetStudentParentUseCase(repo);
  GetStudentUseCase get getStudentsUseCase => GetStudentUseCase(repo);
  RemoveStudentUseCase get removeStudentUseCase => RemoveStudentUseCase(repo);
  UpdateStudentUseCase get updateStudentUseCase => UpdateStudentUseCase(repo);
}
