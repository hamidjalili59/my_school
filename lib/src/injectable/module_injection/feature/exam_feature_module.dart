import 'package:api_service/api_service.dart';
import 'package:database_service/database_service.dart';
import 'package:injectable/injectable.dart';
import 'package:my_school/src/features/exam/data/data_sources/local/exam_local_data_source.dart';
import 'package:my_school/src/features/exam/data/data_sources/remote/exam_remote_data_source.dart';
import 'package:my_school/src/features/exam/data/repositories/exam_repository_impl.dart';
import 'package:my_school/src/features/exam/domain/repositories/exam_repository.dart';
import 'package:my_school/src/features/exam/domain/use_cases/add_exam_use_case.dart';
import 'package:my_school/src/features/exam/domain/use_cases/cache_exam_data_use_case.dart';
import 'package:my_school/src/features/exam/domain/use_cases/get_cached_exam_data_use_case.dart';
import 'package:my_school/src/features/exam/domain/use_cases/get_exams_use_case.dart';
import 'package:my_school/src/features/exam/domain/use_cases/remove_exam_use_case.dart';
import 'package:my_school/src/features/exam/domain/use_cases/update_exam_use_case.dart';
import 'package:my_school/src/injectable/injectable.dart';

@module
abstract class ExamFeatureModule {
  ExamRemoteDataSource get remoteDS => ExamRemoteDataSourceImpl(
        getIt.get<ApiService>(),
      );
  ExamLocalDataSource get localDS => ExamLocalDataSource(
        getIt.get<DatabaseService>(),
      );

  ExamRepository get repo => ExamRepositoryImpl(remoteDS, localDS);

  AddExamUseCase get getExamUseCase => AddExamUseCase(repo);
  CacheExamDataUseCase get cacheExamDataUseCase => CacheExamDataUseCase(repo);
  GetCachedExamDataUseCase get getCachedExamDataUseCase =>
      GetCachedExamDataUseCase(repo);
  GetExamsUseCase get getExamsUseCase => GetExamsUseCase(repo);
  RemoveExamUseCase get removeExamUseCase => RemoveExamUseCase(repo);
  UpdateExamUseCase get updateExamUseCase => UpdateExamUseCase(repo);
}
