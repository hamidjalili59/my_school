import 'package:api_service/api_service.dart';
import 'package:injectable/injectable.dart';
import 'package:my_school/src/features/school/data/data_sources/remote/school_remote_data_source.dart';
import 'package:my_school/src/features/school/data/repositories/school_repository_impl.dart';
import 'package:my_school/src/features/school/domain/reposiotories/school_repository.dart';
import 'package:my_school/src/features/school/domain/usecase/get_schools_usecase.dart';
import 'package:my_school/src/injectable/injectable.dart';

@module
abstract class SchoolFeatureModule {
  SchoolRemoteDataSource get remoteDS => SchoolRemoteDataSourceImpl(
        getIt.get<ApiService>(),
      );

  SchoolRepository get repo => SchoolRepositoryImpl(remoteDS);

  GetSchoolsUseCase get getSchoolsUseCase => GetSchoolsUseCase(repo);
}
