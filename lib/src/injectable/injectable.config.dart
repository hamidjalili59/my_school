// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../core/interceptors/request_interceptor.dart' as _i59;
import '../features/auth/data/data_sources/local/auth_local_data_source.dart'
    as _i10;
import '../features/auth/data/data_sources/remote/auth_remote_data_source.dart'
    as _i11;
import '../features/auth/domain/repositories/auth_repository.dart' as _i12;
import '../features/auth/domain/use_cases/cache_auth_data_use_case.dart'
    as _i13;
import '../features/auth/domain/use_cases/get_cached_auth_data_use_case.dart'
    as _i32;
import '../features/auth/domain/use_cases/otp_handshake_use_case.dart' as _i50;
import '../features/classroom/data/data_sources/local/classroom_local_data_source.dart'
    as _i23;
import '../features/classroom/data/data_sources/remote/classroom_remote_data_source.dart'
    as _i24;
import '../features/classroom/domain/repositories/classroom_repository.dart'
    as _i25;
import '../features/classroom/domain/use_cases/add_classroom_use_case.dart'
    as _i3;
import '../features/classroom/domain/use_cases/cache_classrooms_data_use_case.dart'
    as _i14;
import '../features/classroom/domain/use_cases/get_cache_classrooms_data_use_case.dart'
    as _i33;
import '../features/classroom/domain/use_cases/get_classrooms_use_case.dart'
    as _i41;
import '../features/classroom/domain/use_cases/remove_classroom_use_case.dart'
    as _i54;
import '../features/classroom/domain/use_cases/update_classroom_use_case.dart'
    as _i73;
import '../features/course/data/data_sources/local/course_local_data_source.dart'
    as _i26;
import '../features/course/data/data_sources/remote/course_remote_data_sourse.dart'
    as _i27;
import '../features/course/domain/repositories/course_repository.dart' as _i28;
import '../features/course/domain/use_cases/add_course_use_case.dart' as _i4;
import '../features/course/domain/use_cases/cache_course_data_use_case.dart'
    as _i15;
import '../features/course/domain/use_cases/get_cached_course_data_use_case.dart'
    as _i34;
import '../features/course/domain/use_cases/get_courses_use_case.dart' as _i42;
import '../features/course/domain/use_cases/remove_course_use_case.dart'
    as _i55;
import '../features/course/domain/use_cases/update_course_use_case.dart'
    as _i74;
import '../features/exam/data/data_sources/local/exam_local_data_source.dart'
    as _i29;
import '../features/exam/data/data_sources/remote/exam_remote_data_source.dart'
    as _i30;
import '../features/exam/domain/repositories/exam_repository.dart' as _i31;
import '../features/exam/domain/use_cases/add_exam_use_case.dart' as _i5;
import '../features/exam/domain/use_cases/cache_exam_data_use_case.dart'
    as _i16;
import '../features/exam/domain/use_cases/get_cached_exam_data_use_case.dart'
    as _i35;
import '../features/exam/domain/use_cases/get_exams_use_case.dart' as _i43;
import '../features/exam/domain/use_cases/remove_exam_use_case.dart' as _i56;
import '../features/exam/domain/use_cases/update_exam_use_case.dart' as _i75;
import '../features/parent/data/data_sources/local/parent_local_data_source.dart'
    as _i51;
import '../features/parent/data/data_sources/remote/parent_remote_data_source.dart'
    as _i52;
import '../features/parent/domain/repositories/parent_repository.dart' as _i53;
import '../features/parent/domain/use_cases/cache_parent_data_use_case.dart'
    as _i17;
import '../features/parent/domain/use_cases/get_cached_parent_data_use_case.dart'
    as _i36;
import '../features/parent/domain/use_cases/get_parent_use_case.dart' as _i44;
import '../features/parent/domain/use_cases/update_parent_use_case.dart'
    as _i76;
import '../features/role_call/data/data_sources/local/rollcall_local_data_source.dart'
    as _i60;
import '../features/role_call/data/data_sources/remote/rollcall_remote_data_source.dart'
    as _i61;
import '../features/role_call/domain/repositories/rollcall_repository.dart'
    as _i62;
import '../features/role_call/domain/use_cases/add_rollcall_use_case.dart'
    as _i6;
import '../features/role_call/domain/use_cases/cache_rollcall_data_use_case.dart'
    as _i18;
import '../features/role_call/domain/use_cases/get_cached_rollcall_data_use_case.dart'
    as _i37;
import '../features/role_call/domain/use_cases/get_rollcalls_use_case.dart'
    as _i45;
import '../features/score/data/data_sources/local/score_local_data_source.dart'
    as _i63;
import '../features/score/data/data_sources/remote/score_remote_data_source.dart'
    as _i64;
import '../features/score/domain/repositories/score_repository.dart' as _i65;
import '../features/score/domain/use_cases/add_score_use_case.dart' as _i7;
import '../features/score/domain/use_cases/cache_score_data_use_case.dart'
    as _i19;
import '../features/score/domain/use_cases/get_cached_score_data_use_case.dart'
    as _i38;
import '../features/score/domain/use_cases/get_scores_use_case.dart' as _i46;
import '../features/score/domain/use_cases/update_score_use_case.dart' as _i77;
import '../features/student/data/data_sources/local/student_local_data_source.dart'
    as _i67;
import '../features/student/data/data_sources/remote/student_remote_data_source.dart'
    as _i68;
import '../features/student/domain/repositories/student_repository.dart'
    as _i69;
import '../features/student/domain/use_cases/add_student_use_case.dart' as _i8;
import '../features/student/domain/use_cases/cache_student_data_use_case.dart'
    as _i20;
import '../features/student/domain/use_cases/get_cached_student_data_use_case.dart'
    as _i39;
import '../features/student/domain/use_cases/get_students_use_case.dart'
    as _i47;
import '../features/student/domain/use_cases/remove_student_use_case.dart'
    as _i57;
import '../features/student/domain/use_cases/update_student_use_case.dart'
    as _i78;
import '../features/teacher/data/data_sources/local/teacher_local_data_source.dart'
    as _i70;
import '../features/teacher/data/data_sources/remote/teacher_remote_data_source.dart'
    as _i71;
import '../features/teacher/domain/repositories/teacher_repository.dart'
    as _i72;
import '../features/teacher/domain/use_cases/add_teacher_use_case.dart' as _i9;
import '../features/teacher/domain/use_cases/cache_teacher_data_use_case.dart'
    as _i21;
import '../features/teacher/domain/use_cases/get_cached_teacher_data_use_case.dart'
    as _i40;
import '../features/teacher/domain/use_cases/get_teachers_use_case.dart'
    as _i48;
import '../features/teacher/domain/use_cases/remove_teacher_use_case.dart'
    as _i58;
import '../features/teacher/domain/use_cases/update_teacher_use_case.dart'
    as _i79;
import '../presentation/auth/bloc/auth_bloc.dart' as _i80;
import '../presentation/classroom/bloc/classroom_bloc.dart' as _i22;
import '../presentation/home/bloc/home_bloc.dart' as _i49;
import '../presentation/splash/bloc/splash_bloc.dart' as _i66;
import 'module_injection/feature/auth_feature_module.dart' as _i88;
import 'module_injection/feature/classroom_feature_module.dart' as _i81;
import 'module_injection/feature/course_feature_module.dart' as _i82;
import 'module_injection/feature/exam_feature_module.dart' as _i83;
import 'module_injection/feature/parent_feature_module.dart' as _i89;
import 'module_injection/feature/rollcall_feature_module.dart' as _i84;
import 'module_injection/feature/score_feature_module.dart' as _i85;
import 'module_injection/feature/student_feature_module.dart' as _i86;
import 'module_injection/feature/teacher_feature_module.dart'
    as _i87; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final classroomFeatureModule = _$ClassroomFeatureModule();
  final courseFeatureModule = _$CourseFeatureModule();
  final examFeatureModule = _$ExamFeatureModule();
  final rollcallFeatureModule = _$RollcallFeatureModule();
  final scoreFeatureModule = _$ScoreFeatureModule();
  final studentFeatureModule = _$StudentFeatureModule();
  final teacherFeatureModule = _$TeacherFeatureModule();
  final authFeatureModule = _$AuthFeatureModule();
  final parentFeatureModule = _$ParentFeatureModule();
  gh.factory<_i3.AddClassroomUseCase>(
      () => classroomFeatureModule.getClassroomUseCase);
  gh.factory<_i4.AddCourseUseCase>(() => courseFeatureModule.getCourseUseCase);
  gh.factory<_i5.AddExamUseCase>(() => examFeatureModule.getExamUseCase);
  gh.factory<_i6.AddRollcallUseCase>(
      () => rollcallFeatureModule.getRollcallUseCase);
  gh.factory<_i7.AddScoreUseCase>(() => scoreFeatureModule.getScoreUseCase);
  gh.factory<_i8.AddStudentUseCase>(
      () => studentFeatureModule.getStudentUseCase);
  gh.factory<_i9.AddTeacherUseCase>(
      () => teacherFeatureModule.getTeacherUseCase);
  gh.factory<_i10.AuthLocalDataSource>(() => authFeatureModule.localDS);
  gh.factory<_i11.AuthRemoteDataSource>(() => authFeatureModule.remoteDS);
  gh.factory<_i12.AuthRepository>(() => authFeatureModule.repo);
  gh.factory<_i13.CacheAuthDataUseCase>(
      () => authFeatureModule.cacheAuthDataUseCase);
  gh.factory<_i14.CacheClassroomsDataUseCase>(
      () => classroomFeatureModule.cacheClassroomDataUseCase);
  gh.factory<_i15.CacheCourseDataUseCase>(
      () => courseFeatureModule.cacheCourseDataUseCase);
  gh.factory<_i16.CacheExamDataUseCase>(
      () => examFeatureModule.cacheExamDataUseCase);
  gh.factory<_i17.CacheParentDataUseCase>(
      () => parentFeatureModule.cacheParentDataUseCase);
  gh.factory<_i18.CacheRollcallDataUseCase>(
      () => rollcallFeatureModule.cacheRollcallDataUseCase);
  gh.factory<_i19.CacheScoreDataUseCase>(
      () => scoreFeatureModule.cacheScoreDataUseCase);
  gh.factory<_i20.CacheStudentDataUseCase>(
      () => studentFeatureModule.cacheStudentDataUseCase);
  gh.factory<_i21.CacheTeacherDataUseCase>(
      () => teacherFeatureModule.cacheTeacherDataUseCase);
  gh.factory<_i22.ClassroomBloc>(() => _i22.ClassroomBloc());
  gh.factory<_i23.ClassroomLocalDataSource>(
      () => classroomFeatureModule.localDS);
  gh.factory<_i24.ClassroomRemoteDataSource>(
      () => classroomFeatureModule.remoteDS);
  gh.factory<_i25.ClassroomRepository>(() => classroomFeatureModule.repo);
  gh.factory<_i26.CourseLocalDataSource>(() => courseFeatureModule.localDS);
  gh.factory<_i27.CourseRemoteDataSource>(() => courseFeatureModule.remoteDS);
  gh.factory<_i28.CourseRepository>(() => courseFeatureModule.repo);
  gh.factory<_i29.ExamLocalDataSource>(() => examFeatureModule.localDS);
  gh.factory<_i30.ExamRemoteDataSource>(() => examFeatureModule.remoteDS);
  gh.factory<_i31.ExamRepository>(() => examFeatureModule.repo);
  gh.factory<_i32.GetCachedAuthDataUseCase>(
      () => authFeatureModule.getCacheDataUseCase);
  gh.factory<_i33.GetCachedClassroomsDataUseCase>(
      () => classroomFeatureModule.getCachedClassroomDataUseCase);
  gh.factory<_i34.GetCachedCourseDataUseCase>(
      () => courseFeatureModule.getCachedCourseDataUseCase);
  gh.factory<_i35.GetCachedExamDataUseCase>(
      () => examFeatureModule.getCachedExamDataUseCase);
  gh.factory<_i36.GetCachedParentDataUseCase>(
      () => parentFeatureModule.getCachedParentDataUseCase);
  gh.factory<_i37.GetCachedRollcallDataUseCase>(
      () => rollcallFeatureModule.getCachedRollcallDataUseCase);
  gh.factory<_i38.GetCachedScoreDataUseCase>(
      () => scoreFeatureModule.getCachedScoreDataUseCase);
  gh.factory<_i39.GetCachedStudentDataUseCase>(
      () => studentFeatureModule.getCachedStudentDataUseCase);
  gh.factory<_i40.GetCachedTeacherDataUseCase>(
      () => teacherFeatureModule.getCachedTeacherDataUseCase);
  gh.factory<_i41.GetClassroomsUseCase>(
      () => classroomFeatureModule.getClassroomsUseCase);
  gh.factory<_i42.GetCoursesUseCase>(
      () => courseFeatureModule.getCoursesUseCase);
  gh.factory<_i43.GetExamsUseCase>(() => examFeatureModule.getExamsUseCase);
  gh.factory<_i44.GetParentUseCase>(
      () => parentFeatureModule.getParentsUseCase);
  gh.factory<_i45.GetRollCallsUseCase>(
      () => rollcallFeatureModule.getRollcallsUseCase);
  gh.factory<_i46.GetScoreUseCase>(() => scoreFeatureModule.getScoresUseCase);
  gh.factory<_i47.GetStudentUseCase>(
      () => studentFeatureModule.getStudentsUseCase);
  gh.factory<_i48.GetTeacherUseCase>(
      () => teacherFeatureModule.getTeachersUseCase);
  gh.factory<_i49.HomeBloc>(() => _i49.HomeBloc());
  gh.factory<_i50.OtpHandshakeUseCase>(
      () => authFeatureModule.otpAuthorizaUseCase);
  gh.factory<_i51.ParentLocalDataSource>(() => parentFeatureModule.localDS);
  gh.factory<_i52.ParentRemoteDataSource>(() => parentFeatureModule.remoteDS);
  gh.factory<_i53.ParentRepository>(() => parentFeatureModule.repo);
  gh.factory<_i54.RemoveClassroomUseCase>(
      () => classroomFeatureModule.removeClassroomUseCase);
  gh.factory<_i55.RemoveCourseUseCase>(
      () => courseFeatureModule.removeCourseUseCase);
  gh.factory<_i56.RemoveExamUseCase>(() => examFeatureModule.removeExamUseCase);
  gh.factory<_i57.RemoveStudentUseCase>(
      () => studentFeatureModule.removeStudentUseCase);
  gh.factory<_i58.RemoveTeacherUseCase>(
      () => teacherFeatureModule.removeTeacherUseCase);
  gh.factory<_i59.RequestInterceptor>(() => _i59.RequestInterceptor());
  gh.factory<_i60.RollcallLocalDataSource>(() => rollcallFeatureModule.localDS);
  gh.factory<_i61.RollcallRemoteDataSource>(
      () => rollcallFeatureModule.remoteDS);
  gh.factory<_i62.RollcallRepository>(() => rollcallFeatureModule.repo);
  gh.factory<_i63.ScoreLocalDataSource>(() => scoreFeatureModule.localDS);
  gh.factory<_i64.ScoreRemoteDataSource>(() => scoreFeatureModule.remoteDS);
  gh.factory<_i65.ScoreRepository>(() => scoreFeatureModule.repo);
  gh.factory<_i66.SplashBloc>(
      () => _i66.SplashBloc(get<_i32.GetCachedAuthDataUseCase>()));
  gh.factory<_i67.StudentLocalDataSource>(() => studentFeatureModule.localDS);
  gh.factory<_i68.StudentRemoteDataSource>(() => studentFeatureModule.remoteDS);
  gh.factory<_i69.StudentRepository>(() => studentFeatureModule.repo);
  gh.factory<_i70.TeacherLocalDataSource>(() => teacherFeatureModule.localDS);
  gh.factory<_i71.TeacherRemoteDataSource>(() => teacherFeatureModule.remoteDS);
  gh.factory<_i72.TeacherRepository>(() => teacherFeatureModule.repo);
  gh.factory<_i73.UpdateClassroomUseCase>(
      () => classroomFeatureModule.updateClassroomUseCase);
  gh.factory<_i74.UpdateCourseUseCase>(
      () => courseFeatureModule.updateCourseUseCase);
  gh.factory<_i75.UpdateExamUseCase>(() => examFeatureModule.updateExamUseCase);
  gh.factory<_i76.UpdateParentUseCase>(
      () => parentFeatureModule.updateParentUseCase);
  gh.factory<_i77.UpdateScoreUseCase>(
      () => scoreFeatureModule.updateScoreUseCase);
  gh.factory<_i78.UpdateStudentUseCase>(
      () => studentFeatureModule.updateStudentUseCase);
  gh.factory<_i79.UpdateTeacherUseCase>(
      () => teacherFeatureModule.updateTeacherUseCase);
  gh.factory<_i80.AuthBloc>(() => _i80.AuthBloc(
        get<_i50.OtpHandshakeUseCase>(),
        get<_i13.CacheAuthDataUseCase>(),
      ));
  return get;
}

class _$ClassroomFeatureModule extends _i81.ClassroomFeatureModule {}

class _$CourseFeatureModule extends _i82.CourseFeatureModule {}

class _$ExamFeatureModule extends _i83.ExamFeatureModule {}

class _$RollcallFeatureModule extends _i84.RollcallFeatureModule {}

class _$ScoreFeatureModule extends _i85.ScoreFeatureModule {}

class _$StudentFeatureModule extends _i86.StudentFeatureModule {}

class _$TeacherFeatureModule extends _i87.TeacherFeatureModule {}

class _$AuthFeatureModule extends _i88.AuthFeatureModule {}

class _$ParentFeatureModule extends _i89.ParentFeatureModule {}
