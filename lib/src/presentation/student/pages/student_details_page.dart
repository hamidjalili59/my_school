import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_school/src/config/constants/general_constants.dart';
import 'package:my_school/src/features/home/domain/models/appbar_page_type.dart';
import 'package:my_school/src/features/student/domain/models/student_model/student.dart';
import 'package:my_school/src/injectable/injectable.dart';
import 'package:my_school/src/presentation/exam/pages/exam_page.dart';
import 'package:my_school/src/presentation/home/bloc/home_bloc.dart';
import 'package:my_school/src/presentation/home/widgets/home_appbar_widget.dart';
import 'package:my_school/src/presentation/score/pages/single_score_view_page.dart';

import '../../rollcall/pages/single_student_rollcalls_page.dart';

class StudentDetailsPage extends StatelessWidget {
  StudentDetailsPage({
    Key? key,
  }) : super(key: key);
  final HomeBloc bloc = getIt.get<HomeBloc>();

  @override
  Widget build(BuildContext context) {
    bloc.add(const HomeEvent.changePages(AppbarPageType.score));
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
                        title: getIt.get<Student>().basicInfo!.name,
                        buttonsList: const [
                          AppbarPageType.score,
                          AppbarPageType.rollcall,
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
                            if (pageState == AppbarPageType.score) {
                              return const SingleScoreViewPage();
                            } else if (pageState == AppbarPageType.rollcall) {
                              return const SizedBox(
                                  child: SingleStudentRollcallsPage());
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
