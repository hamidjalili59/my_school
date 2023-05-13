import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_school/src/config/constants/general_constants.dart';
import 'package:my_school/src/config/utils/function_helper.dart';
import 'package:my_school/src/features/auth/domain/models/auth_types.dart';
import 'package:my_school/src/features/teacher/domain/models/teacher.dart';
import 'package:my_school/src/presentation/classroom/bloc/classroom_bloc.dart';
import 'package:my_school/src/presentation/teacher/bloc/teacher/teacher_bloc.dart';
import 'package:ndialog/ndialog.dart';

import 'package:my_school/src/config/routes/router.dart';
import 'package:my_school/src/injectable/injectable.dart';
import 'package:my_school/src/presentation/teacher/widget/custom_avatar_widget.dart';
import 'package:my_school/src/presentation/teacher/widget/custom_label_widget.dart';
import 'package:my_school/src/presentation/teacher/widget/inside_card_custom_button_widget.dart';

class CustomCardTeacherWidget extends StatelessWidget {
  const CustomCardTeacherWidget({
    Key? key,
    required this.phoneController,
    required this.teacher,
    required this.nameController,
    required this.method,
  }) : super(key: key);
  final Teacher teacher;
  final TextEditingController phoneController;
  final TextEditingController nameController;
  final Function() method;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 16.0.r),
      child: Container(
        width: 0.95.sw,
        height: 0.30.sh,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 243, 243, 234),
          borderRadius: BorderRadius.circular(12.r),
          boxShadow: const [
            BoxShadow(
                color: Color.fromARGB(31, 0, 0, 0),
                blurRadius: 8,
                spreadRadius: 0.001,
                blurStyle: BlurStyle.outer,
                offset: Offset(0.1, 0.1))
          ],
          border: Border(
            bottom: BorderSide(color: Colors.black12, width: 1.w),
            right: BorderSide(color: Colors.black12, width: 1.w),
            left: BorderSide(color: Colors.black12, width: 1.w),
            top: BorderSide(color: Colors.black12, width: 1.w),
          ),
        ),
        child: Column(
          children: [
            Expanded(
                flex: 1,
                child: GeneralConstants.userType == UserType.parent
                    ? const SizedBox()
                    : Align(
                        alignment: Alignment.centerRight,
                        child: InkWell(
                          onTap: () => FunctionHelper().removeDialog(
                            'دبیر',
                            () => getIt.get<TeacherBloc>().add(
                                  TeacherEvent.removeTeacher(teacher.teacherId),
                                ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 4.0.h, horizontal: 10.w),
                            child: Icon(Icons.close, size: 26.r),
                          ),
                        ))),
            Expanded(
              flex: 5,
              child: Padding(
                padding: EdgeInsets.only(top: 8.0.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 22.0.r),
                      child: const CustomAvatarWidget(),
                    ),
                    SizedBox(
                      width: 0.6.sw,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomLabelField(title: teacher.basicInfo!.name),
                          CustomLabelField(
                              title:
                                  '0${teacher.basicInfo!.phoneNumber.toInt()}'),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Padding(
                padding: EdgeInsets.all(16.0.r),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 6.r),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InsideCardCustomButtonWidget(
                        title: "تغییر‌ مشخصات",
                        onTap: () {
                          nameController.text = teacher.basicInfo!.name;
                          phoneController.text =
                              '0${teacher.basicInfo!.phoneNumber.toInt()}';
                          method();
                        },
                      ),
                      SizedBox(width: 5.w),
                      InsideCardCustomButtonWidget(
                        title: "کلاس‌ها",
                        onTap: () {
                          getIt.get<ClassroomBloc>().add(
                              ClassroomEvent.getTeacherClasses(
                                  teacher.teacherId));
                          _showTeacherClassesMethod();
                        },
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void _showTeacherClassesMethod() {
    var appRputer = getIt.get<AppRouter>();
    NDialog(
      dialogStyle: DialogStyle(
        titlePadding: EdgeInsets.zero,
        backgroundColor: GeneralConstants.mainColor,
        contentPadding: EdgeInsets.zero,
      ),
      title: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
            color: GeneralConstants.backgroundColor,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(12.r),
                bottomRight: Radius.circular(12.r))),
        // width: 0.15.sw,
        height: 50.h,
        child: Text(
          'لیست کلاسهای این دبیر',
          style: TextStyle(
              color: Colors.black, fontSize: 14.r, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ),
      content: BlocBuilder<ClassroomBloc, ClassroomState>(
        bloc: getIt.get<ClassroomBloc>(),
        builder: (context, state) {
          return SizedBox(
            width: 0.7.sw,
            height: 0.3.sh,
            child: state.isLoading
                ? const Center(
                    child: CircularProgressIndicator(
                      color: Colors.white,
                    ),
                  )
                : ListView.builder(
                    padding: EdgeInsets.zero,
                    itemCount: state.teacherClasses.isEmpty
                        ? 1
                        : state.teacherClasses.length,
                    itemBuilder: (context, index) {
                      if (state.teacherClasses.isEmpty) {
                        return Center(
                          child: SizedBox(
                            width: 0.5.sw,
                            child: Text(
                              'دبیر داخل هیچ کلاسی\nاضافه نشده است',
                              textDirection: TextDirection.rtl,
                              textAlign: TextAlign.center,
                              maxLines: 3,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.r,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        );
                      }
                      return ShowTeacherClassWidget(
                        name: state.teacherClasses[index].className,
                      );
                    },
                  ),
          );
        },
      ),
    ).show(appRputer.navigatorKey.currentContext!);
  }
}

class ShowTeacherClassWidget extends StatelessWidget {
  final String name;
  const ShowTeacherClassWidget({
    Key? key,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Padding(
        padding: EdgeInsets.only(bottom: 10.0.h),
        child: Container(
          decoration: BoxDecoration(
              color: GeneralConstants.backgroundColor,
              borderRadius: BorderRadius.circular(5.r)),
          alignment: Alignment.center,
          width: double.infinity,
          height: 50.h,
          child: Text(
            name,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 18.r,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
