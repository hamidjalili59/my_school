import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_school/src/config/constants/general_constants.dart';
import 'package:my_school/src/config/routes/router.dart';
import 'package:my_school/src/features/home/domain/models/appbar_page_type.dart';
import 'package:my_school/src/injectable/injectable.dart';
import 'package:my_school/src/presentation/classroom/bloc/classroom_bloc.dart';
import 'package:my_school/src/presentation/classroom/pages/classes_page.dart';
import 'package:my_school/src/presentation/course/bloc/course/course_bloc.dart';
import 'package:my_school/src/presentation/course/pages/course_page.dart';
import 'package:my_school/src/presentation/exam/bloc/exam/exam_bloc.dart';
import 'package:my_school/src/presentation/home/bloc/home_bloc.dart';
import 'package:my_school/src/presentation/home/widgets/home_appbar_widget.dart';
import 'package:my_school/src/presentation/score/bloc/score/score_bloc.dart';
import 'package:my_school/src/presentation/score/bloc/score_board/score_board_bloc.dart';
import 'package:my_school/src/presentation/student/bloc/student/student_bloc.dart';
import 'package:my_school/src/presentation/teacher/bloc/teacher/teacher_bloc.dart';
import 'package:my_school/src/presentation/teacher/bloc/teacher_detail/teacher_detail_bloc.dart';
import 'package:my_school/src/presentation/teacher/pages/teacher_page.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final int pagePosition = 0;
  final HomeBloc _homeBloc = getIt.get<HomeBloc>();
  final AppRouter _appRouter = getIt.get<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: GeneralConstants.backgroundColor,
        body: MultiBlocProvider(
          providers: [
            BlocProvider<HomeBloc>(
              create: (_) => _homeBloc,
            ),
            BlocProvider<TeacherDetailBloc>(
              create: (_) => getIt.get<TeacherDetailBloc>(),
            ),
            BlocProvider<CourseBloc>(
              create: (_) => getIt.get<CourseBloc>(),
            ),
            BlocProvider<TeacherBloc>(
              create: (_) => getIt.get<TeacherBloc>(),
            ),
            BlocProvider<ClassroomBloc>(
              create: (_) => getIt.get<ClassroomBloc>(),
            ),
            BlocProvider<StudentBloc>(
              create: (_) => getIt.get<StudentBloc>(),
            ),
            BlocProvider<ScoreBoardBloc>(
              create: (_) => getIt.get<ScoreBoardBloc>(),
            ),
            BlocProvider<ExamBloc>(
              create: (_) => getIt.get<ExamBloc>(),
            ),
            BlocProvider<ScoreBloc>(
              create: (_) => getIt.get<ScoreBloc>(),
            ),
          ],
          child: SizedBox(
            width: 1.sw,
            height: 1.sh,
            child: Column(
              children: [
                Expanded(
                  flex: 3,
                  child: SizedBox(
                    child: HomeCustomAppBar(
                      bloc: _homeBloc,
                      title: 'مدرسه من',
                      buttonsList: const [
                        AppbarPageType.classroom,
                        AppbarPageType.teacher,
                        AppbarPageType.course,
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 12,
                  child: BlocBuilder<HomeBloc, HomeState>(
                      bloc: _homeBloc,
                      builder: (context, state) {
                        return state.maybeWhen(
                          currentPageIndex: (pageState) {
                            if (pageState == AppbarPageType.classroom) {
                              return SizedBox(
                                  child: ClassesPage(appRouter: _appRouter));
                            } else if (pageState == AppbarPageType.teacher) {
                              return SizedBox(child: TeacherPage());
                            } else {
                              return SizedBox(child: CoursePage());
                            }
                          },
                          orElse: () => Container(
                            color: Colors.red,
                          ),
                        );
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
