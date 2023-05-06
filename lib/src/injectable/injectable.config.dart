// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../core/interceptors/request_interceptor.dart' as _i66;
import '../features/auth/data/data_sources/local/auth_local_data_source.dart'
    as _i11;
import '../features/auth/data/data_sources/remote/auth_remote_data_source.dart'
    as _i12;
import '../features/auth/domain/repositories/auth_repository.dart' as _i13;
import '../features/auth/domain/use_cases/cache_auth_data_use_case.dart'
    as _i14;
import '../features/auth/domain/use_cases/get_cached_auth_data_use_case.dart'
    as _i33;
import '../features/auth/domain/use_cases/otp_handshake_use_case.dart' as _i56;
import '../features/classroom/data/data_sources/local/classroom_local_data_source.dart'
    as _i24;
import '../features/classroom/data/data_sources/remote/classroom_remote_data_source.dart'
    as _i25;
import '../features/classroom/domain/repositories/classroom_repository.dart'
    as _i26;
import '../features/classroom/domain/use_cases/add_classroom_use_case.dart'
    as _i3;
import '../features/classroom/domain/use_cases/cache_classrooms_data_use_case.dart'
    as _i15;
import '../features/classroom/domain/use_cases/get_cache_classrooms_data_use_case.dart'
    as _i34;
import '../features/classroom/domain/use_cases/get_classrooms_use_case.dart'
    as _i43;
import '../features/classroom/domain/use_cases/remove_classroom_use_case.dart'
    as _i60;
import '../features/classroom/domain/use_cases/update_classroom_use_case.dart'
    as _i82;
import '../features/course/data/data_sources/local/course_local_data_source.dart'
    as _i27;
import '../features/course/data/data_sources/remote/course_remote_data_sourse.dart'
    as _i28;
import '../features/course/domain/repositories/course_repository.dart' as _i29;
import '../features/course/domain/use_cases/add_course_use_case.dart' as _i4;
import '../features/course/domain/use_cases/cache_course_data_use_case.dart'
    as _i16;
import '../features/course/domain/use_cases/get_cached_course_data_use_case.dart'
    as _i35;
import '../features/course/domain/use_cases/get_courses_use_case.dart' as _i44;
import '../features/course/domain/use_cases/remove_course_use_case.dart'
    as _i61;
import '../features/course/domain/use_cases/update_course_use_case.dart'
    as _i83;
import '../features/exam/data/data_sources/local/exam_local_data_source.dart'
    as _i30;
import '../features/exam/data/data_sources/remote/exam_remote_data_source.dart'
    as _i31;
import '../features/exam/domain/repositories/exam_repository.dart' as _i32;
import '../features/exam/domain/use_cases/add_exam_use_case.dart' as _i5;
import '../features/exam/domain/use_cases/cache_exam_data_use_case.dart'
    as _i17;
import '../features/exam/domain/use_cases/get_cached_exam_data_use_case.dart'
    as _i36;
import '../features/exam/domain/use_cases/get_exams_use_case.dart' as _i45;
import '../features/exam/domain/use_cases/remove_exam_use_case.dart' as _i62;
import '../features/exam/domain/use_cases/update_exam_use_case.dart' as _i84;
import '../features/mediator_tc/data/data_sources/local/mediator_local_data_source.dart'
    as _i53;
import '../features/mediator_tc/data/data_sources/remote/mediator_remote_data_source.dart'
    as _i54;
import '../features/mediator_tc/domain/repositories/mediator_repository.dart'
    as _i55;
import '../features/mediator_tc/domain/use_cases/add_mediator_use_case.dart'
    as _i6;
import '../features/mediator_tc/domain/use_cases/cache_mediator_data_use_case.dart'
    as _i18;
import '../features/mediator_tc/domain/use_cases/get_cached_mediator_data_use_case.dart'
    as _i37;
import '../features/mediator_tc/domain/use_cases/get_mediators_use_case.dart'
    as _i46;
import '../features/mediator_tc/domain/use_cases/remove_mediator_use_case.dart'
    as _i63;
import '../features/parent/data/data_sources/local/parent_local_data_source.dart'
    as _i57;
import '../features/parent/data/data_sources/remote/parent_remote_data_source.dart'
    as _i58;
import '../features/parent/domain/repositories/parent_repository.dart' as _i59;
import '../features/parent/domain/use_cases/cache_parent_data_use_case.dart'
    as _i19;
import '../features/parent/domain/use_cases/get_cached_parent_data_use_case.dart'
    as _i38;
import '../features/parent/domain/use_cases/get_parent_use_case.dart' as _i47;
import '../features/parent/domain/use_cases/update_parent_use_case.dart'
    as _i85;
import '../features/role_call/data/data_sources/local/rollcall_local_data_source.dart'
    as _i68;
import '../features/role_call/data/data_sources/remote/rollcall_remote_data_source.dart'
    as _i69;
import '../features/role_call/domain/repositories/rollcall_repository.dart'
    as _i70;
import '../features/role_call/domain/use_cases/add_rollcall_use_case.dart'
    as _i7;
import '../features/role_call/domain/use_cases/cache_rollcall_data_use_case.dart'
    as _i20;
import '../features/role_call/domain/use_cases/get_cached_rollcall_data_use_case.dart'
    as _i39;
import '../features/role_call/domain/use_cases/get_rollcalls_use_case.dart'
    as _i48;
import '../features/score/data/data_sources/local/score_local_data_source.dart'
    as _i71;
import '../features/score/data/data_sources/remote/score_remote_data_source.dart'
    as _i72;
import '../features/score/domain/repositories/score_repository.dart' as _i73;
import '../features/score/domain/use_cases/add_score_use_case.dart' as _i8;
import '../features/score/domain/use_cases/cache_score_data_use_case.dart'
    as _i21;
import '../features/score/domain/use_cases/get_cached_score_data_use_case.dart'
    as _i40;
import '../features/score/domain/use_cases/get_scores_use_case.dart' as _i49;
import '../features/score/domain/use_cases/update_score_use_case.dart' as _i86;
import '../features/student/data/data_sources/local/student_local_data_source.dart'
    as _i75;
import '../features/student/data/data_sources/remote/student_remote_data_source.dart'
    as _i76;
import '../features/student/domain/repositories/student_repository.dart'
    as _i77;
import '../features/student/domain/use_cases/add_student_use_case.dart' as _i9;
import '../features/student/domain/use_cases/cache_student_data_use_case.dart'
    as _i22;
import '../features/student/domain/use_cases/get_cached_student_data_use_case.dart'
    as _i41;
import '../features/student/domain/use_cases/get_students_use_case.dart'
    as _i50;
import '../features/student/domain/use_cases/remove_student_use_case.dart'
    as _i64;
import '../features/student/domain/use_cases/update_student_use_case.dart'
    as _i87;
import '../features/teacher/data/data_sources/local/teacher_local_data_source.dart'
    as _i79;
import '../features/teacher/data/data_sources/remote/teacher_remote_data_source.dart'
    as _i80;
import '../features/teacher/domain/repositories/teacher_repository.dart'
    as _i81;
import '../features/teacher/domain/use_cases/add_teacher_use_case.dart' as _i10;
import '../features/teacher/domain/use_cases/cache_teacher_data_use_case.dart'
    as _i23;
import '../features/teacher/domain/use_cases/get_cached_teacher_data_use_case.dart'
    as _i42;
import '../features/teacher/domain/use_cases/get_teachers_use_case.dart'
    as _i51;
import '../features/teacher/domain/use_cases/remove_teacher_use_case.dart'
    as _i65;
import '../features/teacher/domain/use_cases/update_teacher_use_case.dart'
    as _i88;
import '../presentation/auth/bloc/auth_bloc.dart' as _i89;
import '../presentation/classroom/bloc/classroom_bloc.dart' as _i90;
import '../presentation/course/bloc/course/course_bloc.dart' as _i91;
import '../presentation/home/bloc/home_bloc.dart' as _i52;
import '../presentation/rollcall/bloc/rollcall_bloc.dart' as _i67;
import '../presentation/splash/bloc/splash_bloc.dart' as _i74;
import '../presentation/student/bloc/student/student_bloc.dart' as _i92;
import '../presentation/teacher/bloc/teacher/teacher_bloc.dart' as _i93;
import '../presentation/teacher/bloc/teacher_detail/teacher_detail_bloc.dart'
    as _i78;
import 'module_injection/feature/auth_feature_module.dart' as _i102;
import 'module_injection/feature/classroom_feature_module.dart' as _i94;
import 'module_injection/feature/course_feature_module.dart' as _i95;
import 'module_injection/feature/exam_feature_module.dart' as _i96;
import 'module_injection/feature/mediator_feature_module.dart' as _i97;
import 'module_injection/feature/parent_feature_module.dart' as _i103;
import 'module_injection/feature/rollcall_feature_module.dart' as _i98;
import 'module_injection/feature/score_feature_module.dart' as _i99;
import 'module_injection/feature/student_feature_module.dart' as _i100;
import 'module_injection/feature/teacher_feature_module.dart'
    as _i101; // ignore_for_file: unnecessary_lambdas

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
  final mediatorFeatureModule = _$MediatorFeatureModule();
  final rollcallFeatureModule = _$RollcallFeatureModule();
  final scoreFeatureModule = _$ScoreFeatureModule();
  final studentFeatureModule = _$StudentFeatureModule();
  final teacherFeatureModule = _$TeacherFeatureModule();
  final authFeatureModule = _$AuthFeatureModule();
  final parentFeatureModule = _$ParentFeatureModule();
  gh.factory<_i3.AddClassroomUseCase>(
      () => classroomFeatureModule.addClassroomUseCase);
  gh.factory<_i4.AddCourseUseCase>(() => courseFeatureModule.getCourseUseCase);
  gh.factory<_i5.AddExamUseCase>(() => examFeatureModule.getExamUseCase);
  gh.factory<_i6.AddMediatorUseCase>(
      () => mediatorFeatureModule.getMediatorUseCase);
  gh.factory<_i7.AddRollcallUseCase>(
      () => rollcallFeatureModule.getRollcallUseCase);
  gh.factory<_i8.AddScoreUseCase>(() => scoreFeatureModule.getScoreUseCase);
  gh.factory<_i9.AddStudentUseCase>(
      () => studentFeatureModule.getStudentUseCase);
  gh.factory<_i10.AddTeacherUseCase>(
      () => teacherFeatureModule.getTeacherUseCase);
  gh.factory<_i11.AuthLocalDataSource>(() => authFeatureModule.localDS);
  gh.factory<_i12.AuthRemoteDataSource>(() => authFeatureModule.remoteDS);
  gh.factory<_i13.AuthRepository>(() => authFeatureModule.repo);
  gh.factory<_i14.CacheAuthDataUseCase>(
      () => authFeatureModule.cacheAuthDataUseCase);
  gh.factory<_i15.CacheClassroomsDataUseCase>(
      () => classroomFeatureModule.cacheClassroomDataUseCase);
  gh.factory<_i16.CacheCourseDataUseCase>(
      () => courseFeatureModule.cacheCourseDataUseCase);
  gh.factory<_i17.CacheExamDataUseCase>(
      () => examFeatureModule.cacheExamDataUseCase);
  gh.factory<_i18.CacheMediatorDataUseCase>(
      () => mediatorFeatureModule.cacheMediatorDataUseCase);
  gh.factory<_i19.CacheParentDataUseCase>(
      () => parentFeatureModule.cacheParentDataUseCase);
  gh.factory<_i20.CacheRollcallDataUseCase>(
      () => rollcallFeatureModule.cacheRollcallDataUseCase);
  gh.factory<_i21.CacheScoreDataUseCase>(
      () => scoreFeatureModule.cacheScoreDataUseCase);
  gh.factory<_i22.CacheStudentDataUseCase>(
      () => studentFeatureModule.cacheStudentDataUseCase);
  gh.factory<_i23.CacheTeacherDataUseCase>(
      () => teacherFeatureModule.cacheTeacherDataUseCase);
  gh.factory<_i24.ClassroomLocalDataSource>(
      () => classroomFeatureModule.localDS);
  gh.factory<_i25.ClassroomRemoteDataSource>(
      () => classroomFeatureModule.remoteDS);
  gh.factory<_i26.ClassroomRepository>(() => classroomFeatureModule.repo);
  gh.factory<_i27.CourseLocalDataSource>(() => courseFeatureModule.localDS);
  gh.factory<_i28.CourseRemoteDataSource>(() => courseFeatureModule.remoteDS);
  gh.factory<_i29.CourseRepository>(() => courseFeatureModule.repo);
  gh.factory<_i30.ExamLocalDataSource>(() => examFeatureModule.localDS);
  gh.factory<_i31.ExamRemoteDataSource>(() => examFeatureModule.remoteDS);
  gh.factory<_i32.ExamRepository>(() => examFeatureModule.repo);
  gh.factory<_i33.GetCachedAuthDataUseCase>(
      () => authFeatureModule.getCacheDataUseCase);
  gh.factory<_i34.GetCachedClassroomsDataUseCase>(
      () => classroomFeatureModule.getCachedClassroomDataUseCase);
  gh.factory<_i35.GetCachedCourseDataUseCase>(
      () => courseFeatureModule.getCachedCourseDataUseCase);
  gh.factory<_i36.GetCachedExamDataUseCase>(
      () => examFeatureModule.getCachedExamDataUseCase);
  gh.factory<_i37.GetCachedMediatorDataUseCase>(
      () => mediatorFeatureModule.getCachedMediatorDataUseCase);
  gh.factory<_i38.GetCachedParentDataUseCase>(
      () => parentFeatureModule.getCachedParentDataUseCase);
  gh.factory<_i39.GetCachedRollcallDataUseCase>(
      () => rollcallFeatureModule.getCachedRollcallDataUseCase);
  gh.factory<_i40.GetCachedScoreDataUseCase>(
      () => scoreFeatureModule.getCachedScoreDataUseCase);
  gh.factory<_i41.GetCachedStudentDataUseCase>(
      () => studentFeatureModule.getCachedStudentDataUseCase);
  gh.factory<_i42.GetCachedTeacherDataUseCase>(
      () => teacherFeatureModule.getCachedTeacherDataUseCase);
  gh.factory<_i43.GetClassroomsUseCase>(
      () => classroomFeatureModule.getClassroomsUseCase);
  gh.factory<_i44.GetCoursesUseCase>(
      () => courseFeatureModule.getCoursesUseCase);
  gh.factory<_i45.GetExamsUseCase>(() => examFeatureModule.getExamsUseCase);
  gh.factory<_i46.GetMediatorUseCase>(
      () => mediatorFeatureModule.getMediatorsUseCase);
  gh.factory<_i47.GetParentUseCase>(
      () => parentFeatureModule.getParentsUseCase);
  gh.factory<_i48.GetRollCallsUseCase>(
      () => rollcallFeatureModule.getRollcallsUseCase);
  gh.factory<_i49.GetScoreUseCase>(() => scoreFeatureModule.getScoresUseCase);
  gh.factory<_i50.GetStudentUseCase>(
      () => studentFeatureModule.getStudentsUseCase);
  gh.factory<_i51.GetTeacherUseCase>(
      () => teacherFeatureModule.getTeachersUseCase);
  gh.factory<_i52.HomeBloc>(() => _i52.HomeBloc());
  gh.factory<_i53.MediatorLocalDataSource>(() => mediatorFeatureModule.localDS);
  gh.factory<_i54.MediatorRemoteDataSource>(
      () => mediatorFeatureModule.remoteDS);
  gh.factory<_i55.MediatorRepository>(() => mediatorFeatureModule.repo);
  gh.factory<_i56.OtpHandshakeUseCase>(
      () => authFeatureModule.otpAuthorizaUseCase);
  gh.factory<_i57.ParentLocalDataSource>(() => parentFeatureModule.localDS);
  gh.factory<_i58.ParentRemoteDataSource>(() => parentFeatureModule.remoteDS);
  gh.factory<_i59.ParentRepository>(() => parentFeatureModule.repo);
  gh.factory<_i60.RemoveClassroomUseCase>(
      () => classroomFeatureModule.removeClassroomUseCase);
  gh.factory<_i61.RemoveCourseUseCase>(
      () => courseFeatureModule.removeCourseUseCase);
  gh.factory<_i62.RemoveExamUseCase>(() => examFeatureModule.removeExamUseCase);
  gh.factory<_i63.RemoveMediatorUseCase>(
      () => mediatorFeatureModule.removeMediatorUseCase);
  gh.factory<_i64.RemoveStudentUseCase>(
      () => studentFeatureModule.removeStudentUseCase);
  gh.factory<_i65.RemoveTeacherUseCase>(
      () => teacherFeatureModule.removeTeacherUseCase);
  gh.factory<_i66.RequestInterceptor>(() => _i66.RequestInterceptor());
  gh.factory<_i67.RollcallBloc>(() => _i67.RollcallBloc());
  gh.factory<_i68.RollcallLocalDataSource>(() => rollcallFeatureModule.localDS);
  gh.factory<_i69.RollcallRemoteDataSource>(
      () => rollcallFeatureModule.remoteDS);
  gh.factory<_i70.RollcallRepository>(() => rollcallFeatureModule.repo);
  gh.factory<_i71.ScoreLocalDataSource>(() => scoreFeatureModule.localDS);
  gh.factory<_i72.ScoreRemoteDataSource>(() => scoreFeatureModule.remoteDS);
  gh.factory<_i73.ScoreRepository>(() => scoreFeatureModule.repo);
  gh.factory<_i74.SplashBloc>(
      () => _i74.SplashBloc(get<_i33.GetCachedAuthDataUseCase>()));
  gh.factory<_i75.StudentLocalDataSource>(() => studentFeatureModule.localDS);
  gh.factory<_i76.StudentRemoteDataSource>(() => studentFeatureModule.remoteDS);
  gh.factory<_i77.StudentRepository>(() => studentFeatureModule.repo);
  gh.lazySingleton<_i78.TeacherDetailBloc>(() => _i78.TeacherDetailBloc(
        get<_i46.GetMediatorUseCase>(),
        get<_i6.AddMediatorUseCase>(),
      ));
  gh.factory<_i79.TeacherLocalDataSource>(() => teacherFeatureModule.localDS);
  gh.factory<_i80.TeacherRemoteDataSource>(() => teacherFeatureModule.remoteDS);
  gh.factory<_i81.TeacherRepository>(() => teacherFeatureModule.repo);
  gh.factory<_i82.UpdateClassroomUseCase>(
      () => classroomFeatureModule.updateClassroomUseCase);
  gh.factory<_i83.UpdateCourseUseCase>(
      () => courseFeatureModule.updateCourseUseCase);
  gh.factory<_i84.UpdateExamUseCase>(() => examFeatureModule.updateExamUseCase);
  gh.factory<_i85.UpdateParentUseCase>(
      () => parentFeatureModule.updateParentUseCase);
  gh.factory<_i86.UpdateScoreUseCase>(
      () => scoreFeatureModule.updateScoreUseCase);
  gh.factory<_i87.UpdateStudentUseCase>(
      () => studentFeatureModule.updateStudentUseCase);
  gh.factory<_i88.UpdateTeacherUseCase>(
      () => teacherFeatureModule.updateTeacherUseCase);
  gh.factory<_i89.AuthBloc>(() => _i89.AuthBloc(
        get<_i56.OtpHandshakeUseCase>(),
        get<_i14.CacheAuthDataUseCase>(),
      ));
  gh.lazySingleton<_i90.ClassroomBloc>(() => _i90.ClassroomBloc(
        get<_i43.GetClassroomsUseCase>(),
        get<_i3.AddClassroomUseCase>(),
      ));
  gh.lazySingleton<_i91.CourseBloc>(() => _i91.CourseBloc(
        get<_i44.GetCoursesUseCase>(),
        get<_i4.AddCourseUseCase>(),
        get<_i83.UpdateCourseUseCase>(),
      ));
  gh.lazySingleton<_i92.StudentBloc>(() => _i92.StudentBloc(
        get<_i50.GetStudentUseCase>(),
        get<_i9.AddStudentUseCase>(),
        get<_i87.UpdateStudentUseCase>(),
      ));
  gh.lazySingleton<_i93.TeacherBloc>(() => _i93.TeacherBloc(
        get<_i51.GetTeacherUseCase>(),
        get<_i10.AddTeacherUseCase>(),
        get<_i88.UpdateTeacherUseCase>(),
      ));
  return get;
}

class _$ClassroomFeatureModule extends _i94.ClassroomFeatureModule {}

class _$CourseFeatureModule extends _i95.CourseFeatureModule {}

class _$ExamFeatureModule extends _i96.ExamFeatureModule {}

class _$MediatorFeatureModule extends _i97.MediatorFeatureModule {}

class _$RollcallFeatureModule extends _i98.RollcallFeatureModule {}

class _$ScoreFeatureModule extends _i99.ScoreFeatureModule {}

class _$StudentFeatureModule extends _i100.StudentFeatureModule {}

class _$TeacherFeatureModule extends _i101.TeacherFeatureModule {}

class _$AuthFeatureModule extends _i102.AuthFeatureModule {}

class _$ParentFeatureModule extends _i103.ParentFeatureModule {}
