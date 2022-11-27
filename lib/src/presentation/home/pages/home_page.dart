import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_school/src/config/constants/general_constants.dart';
import 'package:my_school/src/config/routes/router.dart';
import 'package:my_school/src/injectable/injectable.dart';
import 'package:my_school/src/presentation/classroom/pages/classes_page.dart';
import 'package:my_school/src/presentation/course/pages/course_page.dart';
import 'package:my_school/src/presentation/home/bloc/home_bloc.dart';
import 'package:my_school/src/presentation/home/widgets/home_appbar_widget.dart';
import 'package:my_school/src/presentation/teacher/pages/teacher_page.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final int pagePosition = 0;
  final HomeBloc _homeBloc = getIt.get<HomeBloc>();
  final AppRouter _appRouter = getIt.get<AppRouter>();

  @override
  Widget build(BuildContext context) {
    _homeBloc.add(const HomeEvent.changePages('کلاس‌ها'));
    return SafeArea(
      child: Scaffold(
        backgroundColor: GeneralConstants.backgroundColor,
        body: MultiBlocProvider(
          providers: [
            BlocProvider<HomeBloc>(
              create: (BuildContext context) => _homeBloc,
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
                        'کلاس‌ها',
                        'دبیران',
                        'درس‌ها',
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
                            if (pageState == 'کلاس‌ها') {
                              return SizedBox(
                                  child: ClassesPage(appRouter: _appRouter));
                            } else if (pageState == 'دبیران') {
                              return SizedBox(child: TeacherPage());
                            } else {
                              return SizedBox(child: CoursePage());
                            }
                          },
                          orElse: () => const SizedBox(),
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
