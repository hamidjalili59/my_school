import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_school/src/config/constants/general_constants.dart';
import 'package:my_school/src/config/constants/png_assets.dart';
import 'package:my_school/src/config/routes/router.dart';
import 'package:my_school/src/injectable/injectable.dart';
import 'package:my_school/src/presentation/course/bloc/course/course_bloc.dart';
import 'package:my_school/src/presentation/teacher/bloc/teacher/teacher_bloc.dart';
import 'package:my_school/src/presentation/teacher/bloc/teacher_detail/teacher_detail_bloc.dart';
import 'package:ndialog/ndialog.dart';

class TeacherClassWidget extends StatelessWidget {
  const TeacherClassWidget({super.key});

  @override
  Widget build(BuildContext context) {
    getIt.get<TeacherDetailBloc>().add(const TeacherDetailEvent.getMediators());
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
          icon: Icon(
            Icons.add_circle,
            size: 26.r,
          ),
          onPressed: () {
            NDialog(
              dialogStyle: DialogStyle(),
              title: const Text(
                'اضافه کردن درس و دبیر',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                ),
              ),
              content: const addMediatorDialogWidget(),
              actions: [
                MaterialButton(
                    onPressed: () {
                      getIt.get<AppRouter>().pop();
                    },
                    color: GeneralConstants.mainColor,
                    child: Text(
                      'لغو',
                      style: TextStyle(
                          fontSize: 16.r,
                          color: Colors.white,
                          fontWeight: FontWeight.w700),
                    )),
                MaterialButton(
                  onPressed: () {
                    getIt
                        .get<TeacherDetailBloc>()
                        .add(const TeacherDetailEvent.acceptTeacher());
                  },
                  color: GeneralConstants.mainColor,
                  child: Text(
                    'تایید',
                    style: TextStyle(
                        fontSize: 16.r,
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ).show(context, dismissable: false);
          },
          label: Text(
            'افزودن‌ درس و دبیر',
            style: TextStyle(
                color: Colors.white,
                fontSize: 16.r,
                fontWeight: FontWeight.w700),
          ),
          backgroundColor: GeneralConstants.mainColor),
      body: BlocBuilder<TeacherDetailBloc, TeacherDetailState>(
        bloc: getIt.get<TeacherDetailBloc>(),
        builder: (context, mediatorState) {
          return SizedBox(
            width: 1.sw,
            height: 1.sh,
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16.r,
                mainAxisSpacing: 16.r,
                mainAxisExtent: 0.3.sh,
              ),
              itemCount: mediatorState.mediators.length,
              padding: EdgeInsets.only(top: 16.h, right: 12.w, left: 12.w),
              itemBuilder: (context, index) {
                return TeacherClassTileCardWidget(
                  courseName: mediatorState.mediators[index].courseName,
                  teacherName: mediatorState.mediators[index].basicInfo!.name,
                );
              },
            ),
          );
        },
      ),
    );
  }
}

class addMediatorDialogWidget extends StatelessWidget {
  const addMediatorDialogWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TeacherDetailBloc, TeacherDetailState>(
      bloc: getIt.get<TeacherDetailBloc>(),
      builder: (context, teacherDetailState) {
        return teacherDetailState.maybeWhen(
          idle: (isLoading, mediators, selectedTeacher, selectedCourse) {
            return SizedBox(
              width: 0.9.sw,
              height: 0.4.sh,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Flexible(
                      flex: 8,
                      child: SizedBox(
                        width: 1.sw,
                        height: 1.sh,
                        child: BlocBuilder<TeacherBloc, TeacherState>(
                          bloc: getIt.get<TeacherBloc>(),
                          builder: (context, teacherState) {
                            return ListView.builder(
                              itemCount: teacherState.teachers.length,
                              itemBuilder: (context, index) {
                                return SizedBox(
                                  height: 35.h,
                                  width: 150.w,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      RadioMenuButton(
                                        value: selectedTeacher,
                                        groupValue:
                                            teacherState.teachers[index],
                                        onChanged: (value) {
                                          getIt.get<TeacherDetailBloc>().add(
                                                TeacherDetailEvent
                                                    .selectTeacherItem(
                                                        teacherState
                                                            .teachers[index]),
                                              );
                                        },
                                        child: SizedBox(
                                          width: 80.w,
                                          child: Text(
                                            teacherState.teachers[index]
                                                .basicInfo!.name,
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black87,
                                              fontSize: 14.r,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      )),
                  Container(
                    width: 2.w,
                    color: Colors.grey,
                  ),
                  Flexible(
                      flex: 8,
                      child: SizedBox(
                        width: 1.sw,
                        height: 1.sh,
                        child: BlocBuilder<CourseBloc, CourseState>(
                          bloc: getIt.get<CourseBloc>(),
                          builder: (context, courseState) {
                            return ListView.builder(
                              itemCount: courseState.courses.length,
                              itemBuilder: (context, index) {
                                return InkWell(
                                  onTap: () {},
                                  child: SizedBox(
                                    height: 35.h,
                                    width: 100.w,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        RadioMenuButton(
                                          value: selectedCourse,
                                          groupValue:
                                              courseState.courses[index],
                                          onChanged: (value) {
                                            getIt.get<TeacherDetailBloc>().add(
                                                  TeacherDetailEvent
                                                      .selectCourseItem(
                                                          courseState
                                                              .courses[index]),
                                                );
                                          },
                                          child: SizedBox(
                                            width: 80.w,
                                            child: Text(
                                              courseState
                                                  .courses[index].courseName,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.black87,
                                                fontSize: 14.r,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      )),
                ],
              ),
            );
          },
          orElse: () => const SizedBox(),
        );
      },
    );
  }
}

class TeacherClassTileCardWidget extends StatelessWidget {
  final String teacherName;
  final String courseName;
  const TeacherClassTileCardWidget({
    super.key,
    required this.teacherName,
    required this.courseName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 1.r,
            spreadRadius: 0.1,
          )
        ],
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Flexible(
            flex: 9,
            child: CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: 64.r,
              child: Image.asset(
                PngAssets.teacherProfile,
                color: Colors.black87,
              ),
            ),
          ),
          Flexible(
            flex: 3,
            child: SizedBox(
              child: Text(
                '$teacherName\n$courseName',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 14.r,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
