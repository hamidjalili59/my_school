import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_school/src/config/constants/general_constants.dart';
import 'package:my_school/src/features/auth/domain/models/auth_types.dart';
import 'package:my_school/src/features/classroom/domain/models/classroom_model.dart';
import 'package:my_school/src/features/home/domain/models/appbar_page_type.dart';
import 'package:my_school/src/injectable/injectable.dart';
import 'package:my_school/src/presentation/exam/pages/exam_page.dart';
import 'package:my_school/src/presentation/home/bloc/home_bloc.dart';
import 'package:my_school/src/presentation/home/widgets/home_appbar_widget.dart';
import 'package:my_school/src/presentation/student/pages/class_student_page.dart';
import 'package:my_school/src/presentation/teacher/pages/teacher_page.dart';

class ClassDetailsPage extends StatelessWidget {
  ClassDetailsPage({
    Key? key,
  }) : super(key: key);
  final HomeBloc bloc = getIt.get<HomeBloc>();

  @override
  Widget build(BuildContext context) {
    bloc.add(const HomeEvent.changePages(AppbarPageType.student));
    return SafeArea(
      child: Scaffold(
        backgroundColor: GeneralConstants.backgroundColor,
        body: BlocProvider(
          create: (_) => bloc,
          child: BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              return Column(
                children: [
                  Expanded(
                      flex: 3,
                      child: HomeCustomAppBar(
                        bloc: bloc,
                        title: GeneralConstants.userType == UserType.admin
                            ? getIt.get<Classroom>().className
                            : 'مدرسه من',
                        buttonsList:
                            GeneralConstants.userType == UserType.parent
                                ? const [
                                    AppbarPageType.student,
                                  ]
                                : const [
                                    AppbarPageType.student,
                                    AppbarPageType.teacher,
                                    AppbarPageType.exams,
                                  ],
                      )),
                  Expanded(
                    flex: 12,
                    child: BlocBuilder<HomeBloc, HomeState>(
                      bloc: bloc,
                      builder: (context, state) {
                        return state.maybeWhen(
                          orElse: () => const SizedBox(),
                          currentPageIndex: (pageState) {
                            if (pageState == AppbarPageType.student) {
                              return const ClassStudentPage();
                            } else if (pageState == AppbarPageType.teacher) {
                              return SizedBox(child: TeacherPage());
                            } else {
                              return const SizedBox(child: ExamPage());
                            }
                          },
                        );
                      },
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
