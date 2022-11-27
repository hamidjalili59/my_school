import 'package:api_service/api_service.dart';
import 'package:database_service/database_service.dart';
import 'package:injectable/injectable.dart';
import 'package:my_school/src/features/course/data/data_sources/local/course_local_data_source.dart';
import 'package:my_school/src/features/course/data/data_sources/remote/course_remote_data_sourse.dart';
import 'package:my_school/src/features/course/data/repositories/course_repository_impl.dart';
import 'package:my_school/src/features/course/domain/repositories/course_repository.dart';
import 'package:my_school/src/features/course/domain/use_cases/add_course_use_case.dart';
import 'package:my_school/src/features/course/domain/use_cases/cache_course_data_use_case.dart';
import 'package:my_school/src/features/course/domain/use_cases/get_cached_course_data_use_case.dart';
import 'package:my_school/src/features/course/domain/use_cases/get_courses_use_case.dart';
import 'package:my_school/src/features/course/domain/use_cases/remove_course_use_case.dart';
import 'package:my_school/src/features/course/domain/use_cases/update_course_use_case.dart';
import 'package:my_school/src/injectable/injectable.dart';

@module
abstract class CourseFeatureModule {
  CourseRemoteDataSource get remoteDS => CourseRemoteDataSourceImpl(
        getIt.get<ApiService>(),
      );
  CourseLocalDataSource get localDS => CourseLocalDataSource(
        getIt.get<DatabaseService>(),
      );

  CourseRepository get repo => CourseRepositoryImpl(remoteDS, localDS);

  AddCourseUseCase get getCourseUseCase => AddCourseUseCase(repo);
  CacheCourseDataUseCase get cacheCourseDataUseCase =>
      CacheCourseDataUseCase(repo);
  GetCachedCourseDataUseCase get getCachedCourseDataUseCase =>
      GetCachedCourseDataUseCase(repo);
  GetCoursesUseCase get getCoursesUseCase => GetCoursesUseCase(repo);
  RemoveCourseUseCase get removeCourseUseCase => RemoveCourseUseCase(repo);
  UpdateCourseUseCase get updateCourseUseCase => UpdateCourseUseCase(repo);
}
