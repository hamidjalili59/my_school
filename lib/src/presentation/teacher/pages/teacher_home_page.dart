import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_school/src/config/constants/general_constants.dart';
import 'package:my_school/src/config/routes/router.dart';
import 'package:my_school/src/injectable/injectable.dart';
import 'package:my_school/src/presentation/classroom/widgets/classes_card_widget.dart';
import 'package:my_school/src/presentation/school/bloc/teacher_classroom/teacher_classroom_bloc.dart';

class TeacherHomePage extends StatelessWidget {
  const TeacherHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GeneralConstants.backgroundColor,
      body: BlocBuilder<TeacherClassroomBloc, TeacherClassroomState>(
        bloc: getIt.get<TeacherClassroomBloc>(),
        builder: (context, state) {
          return state.maybeWhen(
            idle: (isLoading, classes) {
              if (state.isLoading) {
                return Center(
                  child: SizedBox(
                      width: 55.w,
                      height: 55.w,
                      child: const CircularProgressIndicator()),
                );
              } else {
                if (state.classes.isNotEmpty) {
                  return SizedBox(
                    width: 1.sw,
                    height: 1.sh,
                    child: ListView.builder(
                      itemCount: classes.length,
                      padding: EdgeInsets.all(8.r),
                      itemBuilder: (context, index) {
                        return ClassesCardWidget(
                          classroom: classes[index],
                          appRouter: getIt.get<AppRouter>(),
                        );
                      },
                    ),
                  );
                } else {
                  return SizedBox(
                    width: 1.sw,
                    height: 0.8.sh,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(
                            width: 0.95.sw,
                            height: 0.5.sh,
                            child: Padding(
                              padding: EdgeInsets.all(54.0.r),
                              child: SvgPicture.asset(
                                'assets/empty.svg',
                              ),
                            ),
                          ),
                          Text(
                            'کلاسی وجود ندارد\nبرای اضافه کردن بر روی + بزنید',
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.w800, fontSize: 18.r),
                          )
                        ],
                      ),
                    ),
                  );
                }
              }
            },
            orElse: () => const SizedBox(),
          );
        },
      ),
    );
  }
}
