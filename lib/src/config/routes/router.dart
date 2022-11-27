import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_school/src/presentation/auth/pages/auth_page.dart';
import 'package:my_school/src/presentation/classroom/pages/class_details_page.dart';
import 'package:my_school/src/presentation/classroom/pages/class_exams_page.dart';
import 'package:my_school/src/presentation/classroom/pages/classes_page.dart';
import 'package:my_school/src/presentation/course/pages/course_page.dart';
import 'package:my_school/src/presentation/home/pages/home_page.dart';
import 'package:my_school/src/presentation/auth/pages/user_authentication_page.dart';
import 'package:my_school/src/presentation/auth/pages/verify_code_page.dart';
import 'package:my_school/src/presentation/intro/pages/intro_page.dart';
import 'package:my_school/src/presentation/rollcall/pages/class_rollcall_page.dart';
import 'package:my_school/src/presentation/score/pages/add_score_for_class_page.dart';
import 'package:my_school/src/presentation/splash/pages/splash_page.dart';
import 'package:my_school/src/presentation/student/pages/class_student_page.dart';
import 'package:my_school/src/presentation/teacher/pages/teacher_page.dart';

part 'router.gr.dart';

@MaterialAutoRouter(replaceInRouteName: 'Page,Route', routes: <AutoRoute>[
  AutoRoute(
    path: "/splash",
    page: SplashPage,
    initial: true,
  ),
  AutoRoute(path: "/intro", page: IntroPage),
  AutoRoute(path: "/auth", page: AuthPage, children: [
    AutoRoute(
      name: "authentication",
      page: UserAuthenticationPage,
    ),
    AutoRoute(name: "verify_code", page: VerificationCodePage),
  ]),
  AutoRoute(
    path: "/home_page",
    page: HomePage,
    children: [
      AutoRoute(
        path: "teacher_page",
        page: TeacherPage,
      ),
      AutoRoute(
        path: "course_page",
        page: CoursePage,
      ),
      AutoRoute(
        path: "classes_page",
        page: ClassesPage,
        // initial: true,
      ),
    ],
  ),
  // class page
  AutoRoute(
    path: "/class_details_page",
    page: ClassDetailsPage,
  ),
  AutoRoute(
    path: "/class_student_page",
    page: ClassStudentPage,
  ),
  AutoRoute(
    path: "/class_exams_page",
    page: ClassExamsPage,
  ),
  AutoRoute(
    path: "/class_rollcalls_page",
    page: ClassRollCallPage,
  ),
  AutoRoute(
    path: "/add_score_for_class_page",
    page: AddScoreForClassPage,
  ),
])
class AppRouter extends _$AppRouter {}
