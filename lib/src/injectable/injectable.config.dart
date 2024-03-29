// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:my_school/src/core/interceptors/request_interceptor.dart'
    as _i71;
import 'package:my_school/src/features/auth/data/data_sources/local/auth_local_data_source.dart'
    as _i11;
import 'package:my_school/src/features/auth/data/data_sources/remote/auth_remote_data_source.dart'
    as _i12;
import 'package:my_school/src/features/auth/domain/repositories/auth_repository.dart'
    as _i13;
import 'package:my_school/src/features/auth/domain/use_cases/cache_auth_data_use_case.dart'
    as _i14;
import 'package:my_school/src/features/auth/domain/use_cases/get_cached_auth_data_use_case.dart'
    as _i34;
import 'package:my_school/src/features/auth/domain/use_cases/logout_auth_use_case.dart'
    as _i56;
import 'package:my_school/src/features/auth/domain/use_cases/otp_handshake_use_case.dart'
    as _i60;
import 'package:my_school/src/features/classroom/data/data_sources/local/classroom_local_data_source.dart'
    as _i25;
import 'package:my_school/src/features/classroom/data/data_sources/remote/classroom_remote_data_source.dart'
    as _i26;
import 'package:my_school/src/features/classroom/domain/repositories/classroom_repository.dart'
    as _i27;
import 'package:my_school/src/features/classroom/domain/use_cases/add_classroom_use_case.dart'
    as _i3;
import 'package:my_school/src/features/classroom/domain/use_cases/cache_classrooms_data_use_case.dart'
    as _i15;
import 'package:my_school/src/features/classroom/domain/use_cases/get_cache_classrooms_data_use_case.dart'
    as _i35;
import 'package:my_school/src/features/classroom/domain/use_cases/get_classrooms_use_case.dart'
    as _i44;
import 'package:my_school/src/features/classroom/domain/use_cases/get_teacher_classroom_use_case.dart'
    as _i54;
import 'package:my_school/src/features/classroom/domain/use_cases/remove_classroom_use_case.dart'
    as _i64;
import 'package:my_school/src/features/classroom/domain/use_cases/update_classroom_use_case.dart'
    as _i93;
import 'package:my_school/src/features/course/data/data_sources/local/course_local_data_source.dart'
    as _i28;
import 'package:my_school/src/features/course/data/data_sources/remote/course_remote_data_sourse.dart'
    as _i29;
import 'package:my_school/src/features/course/domain/repositories/course_repository.dart'
    as _i30;
import 'package:my_school/src/features/course/domain/use_cases/add_course_use_case.dart'
    as _i4;
import 'package:my_school/src/features/course/domain/use_cases/cache_course_data_use_case.dart'
    as _i16;
import 'package:my_school/src/features/course/domain/use_cases/get_cached_course_data_use_case.dart'
    as _i36;
import 'package:my_school/src/features/course/domain/use_cases/get_courses_use_case.dart'
    as _i45;
import 'package:my_school/src/features/course/domain/use_cases/remove_course_use_case.dart'
    as _i65;
import 'package:my_school/src/features/course/domain/use_cases/update_course_use_case.dart'
    as _i94;
import 'package:my_school/src/features/exam/data/data_sources/local/exam_local_data_source.dart'
    as _i31;
import 'package:my_school/src/features/exam/data/data_sources/remote/exam_remote_data_source.dart'
    as _i32;
import 'package:my_school/src/features/exam/domain/repositories/exam_repository.dart'
    as _i33;
import 'package:my_school/src/features/exam/domain/use_cases/add_exam_use_case.dart'
    as _i5;
import 'package:my_school/src/features/exam/domain/use_cases/cache_exam_data_use_case.dart'
    as _i17;
import 'package:my_school/src/features/exam/domain/use_cases/get_cached_exam_data_use_case.dart'
    as _i37;
import 'package:my_school/src/features/exam/domain/use_cases/get_exams_use_case.dart'
    as _i46;
import 'package:my_school/src/features/exam/domain/use_cases/remove_exam_use_case.dart'
    as _i66;
import 'package:my_school/src/features/exam/domain/use_cases/update_exam_use_case.dart'
    as _i95;
import 'package:my_school/src/features/mediator_tc/data/data_sources/local/mediator_local_data_source.dart'
    as _i57;
import 'package:my_school/src/features/mediator_tc/data/data_sources/remote/mediator_remote_data_source.dart'
    as _i58;
import 'package:my_school/src/features/mediator_tc/domain/repositories/mediator_repository.dart'
    as _i59;
import 'package:my_school/src/features/mediator_tc/domain/use_cases/add_mediator_use_case.dart'
    as _i6;
import 'package:my_school/src/features/mediator_tc/domain/use_cases/cache_mediator_data_use_case.dart'
    as _i18;
import 'package:my_school/src/features/mediator_tc/domain/use_cases/get_cached_mediator_data_use_case.dart'
    as _i38;
import 'package:my_school/src/features/mediator_tc/domain/use_cases/get_mediators_use_case.dart'
    as _i47;
import 'package:my_school/src/features/mediator_tc/domain/use_cases/remove_mediator_use_case.dart'
    as _i67;
import 'package:my_school/src/features/parent/data/data_sources/local/parent_local_data_source.dart'
    as _i61;
import 'package:my_school/src/features/parent/data/data_sources/remote/parent_remote_data_source.dart'
    as _i62;
import 'package:my_school/src/features/parent/domain/repositories/parent_repository.dart'
    as _i63;
import 'package:my_school/src/features/parent/domain/use_cases/cache_parent_data_use_case.dart'
    as _i19;
import 'package:my_school/src/features/parent/domain/use_cases/get_cached_parent_data_use_case.dart'
    as _i39;
import 'package:my_school/src/features/parent/domain/use_cases/get_parent_use_case.dart'
    as _i48;
import 'package:my_school/src/features/parent/domain/use_cases/update_parent_use_case.dart'
    as _i96;
import 'package:my_school/src/features/role_call/data/data_sources/local/rollcall_local_data_source.dart'
    as _i73;
import 'package:my_school/src/features/role_call/data/data_sources/remote/rollcall_remote_data_source.dart'
    as _i74;
import 'package:my_school/src/features/role_call/domain/repositories/rollcall_repository.dart'
    as _i75;
import 'package:my_school/src/features/role_call/domain/use_cases/add_rollcall_use_case.dart'
    as _i7;
import 'package:my_school/src/features/role_call/domain/use_cases/cache_rollcall_data_use_case.dart'
    as _i20;
import 'package:my_school/src/features/role_call/domain/use_cases/get_cached_rollcall_data_use_case.dart'
    as _i40;
import 'package:my_school/src/features/role_call/domain/use_cases/get_rollcalls_use_case.dart'
    as _i49;
import 'package:my_school/src/features/school/data/data_sources/remote/school_remote_data_source.dart'
    as _i77;
import 'package:my_school/src/features/school/domain/reposiotories/school_repository.dart'
    as _i78;
import 'package:my_school/src/features/school/domain/usecase/get_schools_usecase.dart'
    as _i50;
import 'package:my_school/src/features/score/data/data_sources/local/score_local_data_source.dart'
    as _i81;
import 'package:my_school/src/features/score/data/data_sources/remote/score_remote_data_source.dart'
    as _i82;
import 'package:my_school/src/features/score/domain/repositories/score_repository.dart'
    as _i83;
import 'package:my_school/src/features/score/domain/use_cases/add_score_use_case.dart'
    as _i8;
import 'package:my_school/src/features/score/domain/use_cases/cache_score_data_use_case.dart'
    as _i21;
import 'package:my_school/src/features/score/domain/use_cases/get_cached_score_data_use_case.dart'
    as _i41;
import 'package:my_school/src/features/score/domain/use_cases/get_scores_use_case.dart'
    as _i51;
import 'package:my_school/src/features/score/domain/use_cases/remove_score_use_case.dart'
    as _i68;
import 'package:my_school/src/features/score/domain/use_cases/update_score_use_case.dart'
    as _i97;
import 'package:my_school/src/features/student/data/data_sources/local/student_local_data_source.dart'
    as _i85;
import 'package:my_school/src/features/student/data/data_sources/remote/student_remote_data_source.dart'
    as _i86;
import 'package:my_school/src/features/student/domain/repositories/student_repository.dart'
    as _i87;
import 'package:my_school/src/features/student/domain/use_cases/add_student_use_case.dart'
    as _i9;
import 'package:my_school/src/features/student/domain/use_cases/cache_student_data_use_case.dart'
    as _i22;
import 'package:my_school/src/features/student/domain/use_cases/get_cached_student_data_use_case.dart'
    as _i42;
import 'package:my_school/src/features/student/domain/use_cases/get_students_parent_use_case.dart'
    as _i52;
import 'package:my_school/src/features/student/domain/use_cases/get_students_use_case.dart'
    as _i53;
import 'package:my_school/src/features/student/domain/use_cases/remove_student_use_case.dart'
    as _i69;
import 'package:my_school/src/features/student/domain/use_cases/update_student_use_case.dart'
    as _i98;
import 'package:my_school/src/features/teacher/data/data_sources/local/teacher_local_data_source.dart'
    as _i90;
import 'package:my_school/src/features/teacher/data/data_sources/remote/teacher_remote_data_source.dart'
    as _i91;
import 'package:my_school/src/features/teacher/domain/repositories/teacher_repository.dart'
    as _i92;
import 'package:my_school/src/features/teacher/domain/use_cases/add_teacher_use_case.dart'
    as _i10;
import 'package:my_school/src/features/teacher/domain/use_cases/cache_teacher_data_use_case.dart'
    as _i23;
import 'package:my_school/src/features/teacher/domain/use_cases/get_cached_teacher_data_use_case.dart'
    as _i43;
import 'package:my_school/src/features/teacher/domain/use_cases/get_teachers_use_case.dart'
    as _i55;
import 'package:my_school/src/features/teacher/domain/use_cases/remove_teacher_use_case.dart'
    as _i70;
import 'package:my_school/src/features/teacher/domain/use_cases/update_teacher_use_case.dart'
    as _i99;
import 'package:my_school/src/injectable/module_injection/feature/auth_feature_module.dart'
    as _i107;
import 'package:my_school/src/injectable/module_injection/feature/classroom_feature_module.dart'
    as _i108;
import 'package:my_school/src/injectable/module_injection/feature/course_feature_module.dart'
    as _i109;
import 'package:my_school/src/injectable/module_injection/feature/exam_feature_module.dart'
    as _i110;
import 'package:my_school/src/injectable/module_injection/feature/mediator_feature_module.dart'
    as _i111;
import 'package:my_school/src/injectable/module_injection/feature/parent_feature_module.dart'
    as _i112;
import 'package:my_school/src/injectable/module_injection/feature/rollcall_feature_module.dart'
    as _i113;
import 'package:my_school/src/injectable/module_injection/feature/school_feature_module.dart'
    as _i117;
import 'package:my_school/src/injectable/module_injection/feature/score_feature_module.dart'
    as _i114;
import 'package:my_school/src/injectable/module_injection/feature/student_feature_module.dart'
    as _i115;
import 'package:my_school/src/injectable/module_injection/feature/teacher_feature_module.dart'
    as _i116;
import 'package:my_school/src/presentation/auth/bloc/auth_bloc.dart' as _i100;
import 'package:my_school/src/presentation/classroom/bloc/classroom_bloc.dart'
    as _i101;
import 'package:my_school/src/presentation/course/bloc/course/course_bloc.dart'
    as _i102;
import 'package:my_school/src/presentation/exam/bloc/exam/exam_bloc.dart'
    as _i103;
import 'package:my_school/src/presentation/home/bloc/home_bloc.dart' as _i104;
import 'package:my_school/src/presentation/rollcall/bloc/rollcall_class/class_rollcall/class_rollcall_bloc.dart'
    as _i24;
import 'package:my_school/src/presentation/rollcall/bloc/rollcall_single/rollcall_bloc.dart'
    as _i72;
import 'package:my_school/src/presentation/school/bloc/school/school_bloc.dart'
    as _i76;
import 'package:my_school/src/presentation/school/bloc/teacher_classroom/teacher_classroom_bloc.dart'
    as _i88;
import 'package:my_school/src/presentation/score/bloc/score/score_bloc.dart'
    as _i79;
import 'package:my_school/src/presentation/score/bloc/score_board/score_board_bloc.dart'
    as _i80;
import 'package:my_school/src/presentation/splash/bloc/splash_bloc.dart'
    as _i84;
import 'package:my_school/src/presentation/student/bloc/student/student_bloc.dart'
    as _i105;
import 'package:my_school/src/presentation/teacher/bloc/teacher/teacher_bloc.dart'
    as _i106;
import 'package:my_school/src/presentation/teacher/bloc/teacher_detail/teacher_detail_bloc.dart'
    as _i89;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
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
    final schoolFeatureModule = _$SchoolFeatureModule();
    gh.factory<_i3.AddClassroomUseCase>(
        () => classroomFeatureModule.addClassroomUseCase);
    gh.factory<_i4.AddCourseUseCase>(
        () => courseFeatureModule.getCourseUseCase);
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
    gh.factory<_i24.ClassRollcallBloc>(
        () => _i24.ClassRollcallBloc(gh<_i7.AddRollcallUseCase>()));
    gh.factory<_i25.ClassroomLocalDataSource>(
        () => classroomFeatureModule.localDS);
    gh.factory<_i26.ClassroomRemoteDataSource>(
        () => classroomFeatureModule.remoteDS);
    gh.factory<_i27.ClassroomRepository>(() => classroomFeatureModule.repo);
    gh.factory<_i28.CourseLocalDataSource>(() => courseFeatureModule.localDS);
    gh.factory<_i29.CourseRemoteDataSource>(() => courseFeatureModule.remoteDS);
    gh.factory<_i30.CourseRepository>(() => courseFeatureModule.repo);
    gh.factory<_i31.ExamLocalDataSource>(() => examFeatureModule.localDS);
    gh.factory<_i32.ExamRemoteDataSource>(() => examFeatureModule.remoteDS);
    gh.factory<_i33.ExamRepository>(() => examFeatureModule.repo);
    gh.factory<_i34.GetCachedAuthDataUseCase>(
        () => authFeatureModule.getCacheDataUseCase);
    gh.factory<_i35.GetCachedClassroomsDataUseCase>(
        () => classroomFeatureModule.getCachedClassroomDataUseCase);
    gh.factory<_i36.GetCachedCourseDataUseCase>(
        () => courseFeatureModule.getCachedCourseDataUseCase);
    gh.factory<_i37.GetCachedExamDataUseCase>(
        () => examFeatureModule.getCachedExamDataUseCase);
    gh.factory<_i38.GetCachedMediatorDataUseCase>(
        () => mediatorFeatureModule.getCachedMediatorDataUseCase);
    gh.factory<_i39.GetCachedParentDataUseCase>(
        () => parentFeatureModule.getCachedParentDataUseCase);
    gh.factory<_i40.GetCachedRollcallDataUseCase>(
        () => rollcallFeatureModule.getCachedRollcallDataUseCase);
    gh.factory<_i41.GetCachedScoreDataUseCase>(
        () => scoreFeatureModule.getCachedScoreDataUseCase);
    gh.factory<_i42.GetCachedStudentDataUseCase>(
        () => studentFeatureModule.getCachedStudentDataUseCase);
    gh.factory<_i43.GetCachedTeacherDataUseCase>(
        () => teacherFeatureModule.getCachedTeacherDataUseCase);
    gh.factory<_i44.GetClassroomsUseCase>(
        () => classroomFeatureModule.getClassroomsUseCase);
    gh.factory<_i45.GetCoursesUseCase>(
        () => courseFeatureModule.getCoursesUseCase);
    gh.factory<_i46.GetExamsUseCase>(() => examFeatureModule.getExamsUseCase);
    gh.factory<_i47.GetMediatorUseCase>(
        () => mediatorFeatureModule.getMediatorsUseCase);
    gh.factory<_i48.GetParentUseCase>(
        () => parentFeatureModule.getParentsUseCase);
    gh.factory<_i49.GetRollCallsUseCase>(
        () => rollcallFeatureModule.getRollcallsUseCase);
    gh.factory<_i50.GetSchoolsUseCase>(
        () => schoolFeatureModule.getSchoolsUseCase);
    gh.factory<_i51.GetScoreUseCase>(() => scoreFeatureModule.getScoresUseCase);
    gh.factory<_i52.GetStudentParentUseCase>(
        () => studentFeatureModule.getStudentParentUseCase);
    gh.factory<_i53.GetStudentUseCase>(
        () => studentFeatureModule.getStudentsUseCase);
    gh.factory<_i54.GetTeacherClassroomsUseCase>(
        () => classroomFeatureModule.getTeacherClassroomDataUseCase);
    gh.factory<_i55.GetTeacherUseCase>(
        () => teacherFeatureModule.getTeachersUseCase);
    gh.factory<_i56.LogoutAuthDataUseCase>(
        () => authFeatureModule.logoutAuthDataUseCase);
    gh.factory<_i57.MediatorLocalDataSource>(
        () => mediatorFeatureModule.localDS);
    gh.factory<_i58.MediatorRemoteDataSource>(
        () => mediatorFeatureModule.remoteDS);
    gh.factory<_i59.MediatorRepository>(() => mediatorFeatureModule.repo);
    gh.factory<_i60.OtpHandshakeUseCase>(
        () => authFeatureModule.otpAuthorizaUseCase);
    gh.factory<_i61.ParentLocalDataSource>(() => parentFeatureModule.localDS);
    gh.factory<_i62.ParentRemoteDataSource>(() => parentFeatureModule.remoteDS);
    gh.factory<_i63.ParentRepository>(() => parentFeatureModule.repo);
    gh.factory<_i64.RemoveClassroomUseCase>(
        () => classroomFeatureModule.removeClassroomUseCase);
    gh.factory<_i65.RemoveCourseUseCase>(
        () => courseFeatureModule.removeCourseUseCase);
    gh.factory<_i66.RemoveExamUseCase>(
        () => examFeatureModule.removeExamUseCase);
    gh.factory<_i67.RemoveMediatorUseCase>(
        () => mediatorFeatureModule.removeMediatorUseCase);
    gh.factory<_i68.RemoveScoreUseCase>(
        () => scoreFeatureModule.removeScoreUseCase);
    gh.factory<_i69.RemoveStudentUseCase>(
        () => studentFeatureModule.removeStudentUseCase);
    gh.factory<_i70.RemoveTeacherUseCase>(
        () => teacherFeatureModule.removeTeacherUseCase);
    gh.factory<_i71.RequestInterceptor>(() => _i71.RequestInterceptor());
    gh.lazySingleton<_i72.RollcallBloc>(
        () => _i72.RollcallBloc(gh<_i49.GetRollCallsUseCase>()));
    gh.factory<_i73.RollcallLocalDataSource>(
        () => rollcallFeatureModule.localDS);
    gh.factory<_i74.RollcallRemoteDataSource>(
        () => rollcallFeatureModule.remoteDS);
    gh.factory<_i75.RollcallRepository>(() => rollcallFeatureModule.repo);
    gh.lazySingleton<_i76.SchoolBloc>(
        () => _i76.SchoolBloc(gh<_i50.GetSchoolsUseCase>()));
    gh.factory<_i77.SchoolRemoteDataSource>(() => schoolFeatureModule.remoteDS);
    gh.factory<_i78.SchoolRepository>(() => schoolFeatureModule.repo);
    gh.factory<_i79.ScoreBloc>(() => _i79.ScoreBloc(
          gh<_i51.GetScoreUseCase>(),
          gh<_i68.RemoveScoreUseCase>(),
        ));
    gh.factory<_i80.ScoreBoardBloc>(() => _i80.ScoreBoardBloc(
          gh<_i53.GetStudentUseCase>(),
          gh<_i8.AddScoreUseCase>(),
        ));
    gh.factory<_i81.ScoreLocalDataSource>(() => scoreFeatureModule.localDS);
    gh.factory<_i82.ScoreRemoteDataSource>(() => scoreFeatureModule.remoteDS);
    gh.factory<_i83.ScoreRepository>(() => scoreFeatureModule.repo);
    gh.lazySingleton<_i84.SplashBloc>(
        () => _i84.SplashBloc(gh<_i34.GetCachedAuthDataUseCase>()));
    gh.factory<_i85.StudentLocalDataSource>(() => studentFeatureModule.localDS);
    gh.factory<_i86.StudentRemoteDataSource>(
        () => studentFeatureModule.remoteDS);
    gh.factory<_i87.StudentRepository>(() => studentFeatureModule.repo);
    gh.lazySingleton<_i88.TeacherClassroomBloc>(() =>
        _i88.TeacherClassroomBloc(gh<_i54.GetTeacherClassroomsUseCase>()));
    gh.lazySingleton<_i89.TeacherDetailBloc>(() => _i89.TeacherDetailBloc(
          gh<_i47.GetMediatorUseCase>(),
          gh<_i6.AddMediatorUseCase>(),
          gh<_i67.RemoveMediatorUseCase>(),
        ));
    gh.factory<_i90.TeacherLocalDataSource>(() => teacherFeatureModule.localDS);
    gh.factory<_i91.TeacherRemoteDataSource>(
        () => teacherFeatureModule.remoteDS);
    gh.factory<_i92.TeacherRepository>(() => teacherFeatureModule.repo);
    gh.factory<_i93.UpdateClassroomUseCase>(
        () => classroomFeatureModule.updateClassroomUseCase);
    gh.factory<_i94.UpdateCourseUseCase>(
        () => courseFeatureModule.updateCourseUseCase);
    gh.factory<_i95.UpdateExamUseCase>(
        () => examFeatureModule.updateExamUseCase);
    gh.factory<_i96.UpdateParentUseCase>(
        () => parentFeatureModule.updateParentUseCase);
    gh.factory<_i97.UpdateScoreUseCase>(
        () => scoreFeatureModule.updateScoreUseCase);
    gh.factory<_i98.UpdateStudentUseCase>(
        () => studentFeatureModule.updateStudentUseCase);
    gh.factory<_i99.UpdateTeacherUseCase>(
        () => teacherFeatureModule.updateTeacherUseCase);
    gh.factory<_i100.AuthBloc>(() => _i100.AuthBloc(
          gh<_i60.OtpHandshakeUseCase>(),
          gh<_i14.CacheAuthDataUseCase>(),
          gh<_i56.LogoutAuthDataUseCase>(),
        ));
    gh.lazySingleton<_i101.ClassroomBloc>(() => _i101.ClassroomBloc(
          gh<_i44.GetClassroomsUseCase>(),
          gh<_i3.AddClassroomUseCase>(),
          gh<_i54.GetTeacherClassroomsUseCase>(),
          gh<_i93.UpdateClassroomUseCase>(),
          gh<_i64.RemoveClassroomUseCase>(),
        ));
    gh.lazySingleton<_i102.CourseBloc>(() => _i102.CourseBloc(
          gh<_i45.GetCoursesUseCase>(),
          gh<_i4.AddCourseUseCase>(),
          gh<_i94.UpdateCourseUseCase>(),
          gh<_i65.RemoveCourseUseCase>(),
        ));
    gh.lazySingleton<_i103.ExamBloc>(() => _i103.ExamBloc(
          gh<_i46.GetExamsUseCase>(),
          gh<_i5.AddExamUseCase>(),
          gh<_i66.RemoveExamUseCase>(),
        ));
    gh.factory<_i104.HomeBloc>(
        () => _i104.HomeBloc(gh<_i56.LogoutAuthDataUseCase>()));
    gh.lazySingleton<_i105.StudentBloc>(() => _i105.StudentBloc(
          gh<_i53.GetStudentUseCase>(),
          gh<_i9.AddStudentUseCase>(),
          gh<_i52.GetStudentParentUseCase>(),
          gh<_i98.UpdateStudentUseCase>(),
          gh<_i69.RemoveStudentUseCase>(),
        ));
    gh.lazySingleton<_i106.TeacherBloc>(() => _i106.TeacherBloc(
          gh<_i55.GetTeacherUseCase>(),
          gh<_i10.AddTeacherUseCase>(),
          gh<_i99.UpdateTeacherUseCase>(),
          gh<_i70.RemoveTeacherUseCase>(),
        ));
    return this;
  }
}

class _$AuthFeatureModule extends _i107.AuthFeatureModule {}

class _$ClassroomFeatureModule extends _i108.ClassroomFeatureModule {}

class _$CourseFeatureModule extends _i109.CourseFeatureModule {}

class _$ExamFeatureModule extends _i110.ExamFeatureModule {}

class _$MediatorFeatureModule extends _i111.MediatorFeatureModule {}

class _$ParentFeatureModule extends _i112.ParentFeatureModule {}

class _$RollcallFeatureModule extends _i113.RollcallFeatureModule {}

class _$ScoreFeatureModule extends _i114.ScoreFeatureModule {}

class _$StudentFeatureModule extends _i115.StudentFeatureModule {}

class _$TeacherFeatureModule extends _i116.TeacherFeatureModule {}

class _$SchoolFeatureModule extends _i117.SchoolFeatureModule {}
