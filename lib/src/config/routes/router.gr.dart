// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const SplashPage(),
      );
    },
    IntroRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const IntroPage(),
      );
    },
    AuthRoute.name: (routeData) {
      final args =
          routeData.argsAs<AuthRouteArgs>(orElse: () => const AuthRouteArgs());
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: AuthPage(key: args.key),
      );
    },
    HomeRoute.name: (routeData) {
      final args =
          routeData.argsAs<HomeRouteArgs>(orElse: () => const HomeRouteArgs());
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: HomePage(key: args.key),
      );
    },
    ClassDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<ClassDetailsRouteArgs>(
          orElse: () => const ClassDetailsRouteArgs());
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: ClassDetailsPage(key: args.key),
      );
    },
    StudentDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<StudentDetailsRouteArgs>(
          orElse: () => const StudentDetailsRouteArgs());
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: StudentDetailsPage(key: args.key),
      );
    },
    ClassStudentRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const ClassStudentPage(),
      );
    },
    ClassRollCallRoute.name: (routeData) {
      final args = routeData.argsAs<ClassRollCallRouteArgs>(
          orElse: () => const ClassRollCallRouteArgs());
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: ClassRollCallPage(key: args.key),
      );
    },
    AddScoreForClassRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const AddScoreForClassPage(),
      );
    },
    Authentication.name: (routeData) {
      final args = routeData.argsAs<AuthenticationArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: UserAuthenticationPage(
          key: args.key,
          bloc: args.bloc,
        ),
      );
    },
    Verify_code.name: (routeData) {
      final args = routeData.argsAs<Verify_codeArgs>(
          orElse: () => const Verify_codeArgs());
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: VerificationCodePage(key: args.key),
      );
    },
    TeacherRoute.name: (routeData) {
      final args = routeData.argsAs<TeacherRouteArgs>(
          orElse: () => const TeacherRouteArgs());
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: TeacherPage(key: args.key),
      );
    },
    CourseRoute.name: (routeData) {
      final args = routeData.argsAs<CourseRouteArgs>(
          orElse: () => const CourseRouteArgs());
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: CoursePage(key: args.key),
      );
    },
    ClassesRoute.name: (routeData) {
      final args = routeData.argsAs<ClassesRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: ClassesPage(
          key: args.key,
          appRouter: args.appRouter,
        ),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/splash',
          fullMatch: true,
        ),
        RouteConfig(
          SplashRoute.name,
          path: '/splash',
        ),
        RouteConfig(
          IntroRoute.name,
          path: '/intro',
        ),
        RouteConfig(
          AuthRoute.name,
          path: '/auth',
          children: [
            RouteConfig(
              Authentication.name,
              path: 'user-authentication-page',
              parent: AuthRoute.name,
            ),
            RouteConfig(
              Verify_code.name,
              path: 'verification-code-page',
              parent: AuthRoute.name,
            ),
          ],
        ),
        RouteConfig(
          HomeRoute.name,
          path: '/home_page',
          children: [
            RouteConfig(
              TeacherRoute.name,
              path: 'teacher_page',
              parent: HomeRoute.name,
            ),
            RouteConfig(
              CourseRoute.name,
              path: 'course_page',
              parent: HomeRoute.name,
            ),
            RouteConfig(
              ClassesRoute.name,
              path: 'classes_page',
              parent: HomeRoute.name,
            ),
          ],
        ),
        RouteConfig(
          ClassDetailsRoute.name,
          path: '/class_details_page',
        ),
        RouteConfig(
          StudentDetailsRoute.name,
          path: '/student_details_page',
        ),
        RouteConfig(
          ClassStudentRoute.name,
          path: '/class_student_page',
        ),
        RouteConfig(
          ClassRollCallRoute.name,
          path: '/class_rollcalls_page',
        ),
        RouteConfig(
          AddScoreForClassRoute.name,
          path: '/add_score_for_class_page',
        ),
      ];
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/splash',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [IntroPage]
class IntroRoute extends PageRouteInfo<void> {
  const IntroRoute()
      : super(
          IntroRoute.name,
          path: '/intro',
        );

  static const String name = 'IntroRoute';
}

/// generated route for
/// [AuthPage]
class AuthRoute extends PageRouteInfo<AuthRouteArgs> {
  AuthRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          AuthRoute.name,
          path: '/auth',
          args: AuthRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'AuthRoute';
}

class AuthRouteArgs {
  const AuthRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'AuthRouteArgs{key: $key}';
  }
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<HomeRouteArgs> {
  HomeRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          HomeRoute.name,
          path: '/home_page',
          args: HomeRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'HomeRoute';
}

class HomeRouteArgs {
  const HomeRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key}';
  }
}

/// generated route for
/// [ClassDetailsPage]
class ClassDetailsRoute extends PageRouteInfo<ClassDetailsRouteArgs> {
  ClassDetailsRoute({Key? key})
      : super(
          ClassDetailsRoute.name,
          path: '/class_details_page',
          args: ClassDetailsRouteArgs(key: key),
        );

  static const String name = 'ClassDetailsRoute';
}

class ClassDetailsRouteArgs {
  const ClassDetailsRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'ClassDetailsRouteArgs{key: $key}';
  }
}

/// generated route for
/// [StudentDetailsPage]
class StudentDetailsRoute extends PageRouteInfo<StudentDetailsRouteArgs> {
  StudentDetailsRoute({Key? key})
      : super(
          StudentDetailsRoute.name,
          path: '/student_details_page',
          args: StudentDetailsRouteArgs(key: key),
        );

  static const String name = 'StudentDetailsRoute';
}

class StudentDetailsRouteArgs {
  const StudentDetailsRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'StudentDetailsRouteArgs{key: $key}';
  }
}

/// generated route for
/// [ClassStudentPage]
class ClassStudentRoute extends PageRouteInfo<void> {
  const ClassStudentRoute()
      : super(
          ClassStudentRoute.name,
          path: '/class_student_page',
        );

  static const String name = 'ClassStudentRoute';
}

/// generated route for
/// [ClassRollCallPage]
class ClassRollCallRoute extends PageRouteInfo<ClassRollCallRouteArgs> {
  ClassRollCallRoute({Key? key})
      : super(
          ClassRollCallRoute.name,
          path: '/class_rollcalls_page',
          args: ClassRollCallRouteArgs(key: key),
        );

  static const String name = 'ClassRollCallRoute';
}

class ClassRollCallRouteArgs {
  const ClassRollCallRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'ClassRollCallRouteArgs{key: $key}';
  }
}

/// generated route for
/// [AddScoreForClassPage]
class AddScoreForClassRoute extends PageRouteInfo<void> {
  const AddScoreForClassRoute()
      : super(
          AddScoreForClassRoute.name,
          path: '/add_score_for_class_page',
        );

  static const String name = 'AddScoreForClassRoute';
}

/// generated route for
/// [UserAuthenticationPage]
class Authentication extends PageRouteInfo<AuthenticationArgs> {
  Authentication({
    Key? key,
    required AuthBloc bloc,
  }) : super(
          Authentication.name,
          path: 'user-authentication-page',
          args: AuthenticationArgs(
            key: key,
            bloc: bloc,
          ),
        );

  static const String name = 'Authentication';
}

class AuthenticationArgs {
  const AuthenticationArgs({
    this.key,
    required this.bloc,
  });

  final Key? key;

  final AuthBloc bloc;

  @override
  String toString() {
    return 'AuthenticationArgs{key: $key, bloc: $bloc}';
  }
}

/// generated route for
/// [VerificationCodePage]
class Verify_code extends PageRouteInfo<Verify_codeArgs> {
  Verify_code({Key? key})
      : super(
          Verify_code.name,
          path: 'verification-code-page',
          args: Verify_codeArgs(key: key),
        );

  static const String name = 'Verify_code';
}

class Verify_codeArgs {
  const Verify_codeArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'Verify_codeArgs{key: $key}';
  }
}

/// generated route for
/// [TeacherPage]
class TeacherRoute extends PageRouteInfo<TeacherRouteArgs> {
  TeacherRoute({Key? key})
      : super(
          TeacherRoute.name,
          path: 'teacher_page',
          args: TeacherRouteArgs(key: key),
        );

  static const String name = 'TeacherRoute';
}

class TeacherRouteArgs {
  const TeacherRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'TeacherRouteArgs{key: $key}';
  }
}

/// generated route for
/// [CoursePage]
class CourseRoute extends PageRouteInfo<CourseRouteArgs> {
  CourseRoute({Key? key})
      : super(
          CourseRoute.name,
          path: 'course_page',
          args: CourseRouteArgs(key: key),
        );

  static const String name = 'CourseRoute';
}

class CourseRouteArgs {
  const CourseRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'CourseRouteArgs{key: $key}';
  }
}

/// generated route for
/// [ClassesPage]
class ClassesRoute extends PageRouteInfo<ClassesRouteArgs> {
  ClassesRoute({
    Key? key,
    required AppRouter appRouter,
  }) : super(
          ClassesRoute.name,
          path: 'classes_page',
          args: ClassesRouteArgs(
            key: key,
            appRouter: appRouter,
          ),
        );

  static const String name = 'ClassesRoute';
}

class ClassesRouteArgs {
  const ClassesRouteArgs({
    this.key,
    required this.appRouter,
  });

  final Key? key;

  final AppRouter appRouter;

  @override
  String toString() {
    return 'ClassesRouteArgs{key: $key, appRouter: $appRouter}';
  }
}
