import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_school/src/config/constants/general_constants.dart';
import 'package:my_school/src/config/routes/router.dart';
import 'package:my_school/src/features/core/models/basic_info_model.dart';
import 'package:my_school/src/features/teacher/domain/models/teacher.dart';
import 'package:my_school/src/injectable/injectable.dart';
import 'package:my_school/src/presentation/auth/widgets/textfield_custom.dart';
import 'package:my_school/src/presentation/teacher/bloc/teacher/teacher_bloc.dart';
import 'package:my_school/src/presentation/teacher/widget/custom_card_teacher_widget.dart';
import 'package:my_school/src/presentation/teacher/widget/teacher_class_card_widget.dart';
import 'package:ndialog/ndialog.dart';

class TeacherPage extends StatelessWidget {
  TeacherPage({super.key});
  final TextEditingController _controllerName = TextEditingController(text: '');
  final TextEditingController _controllerPhone =
      TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    if (getIt.get<AppRouter>().current.name == 'HomeRoute') {
      return Scaffold(
        floatingActionButton: FloatingActionButton.extended(
            icon: Icon(
              Icons.add_circle,
              color: Colors.white,
              size: 26.r,
            ),
            onPressed: () {
              _addTeacherDialogMethod(false);
            },
            label: Text(
              'افزودن‌دبیر',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.r,
                  fontWeight: FontWeight.w700),
            ),
            backgroundColor: GeneralConstants.mainColor),
        backgroundColor: GeneralConstants.backgroundColor,
        body: BlocBuilder<TeacherBloc, TeacherState>(
          bloc: getIt.get<TeacherBloc>(),
          builder: (context, state) {
            return state.maybeWhen(
              idle: (isLoading, teachers) {
                if (state.isLoading) {
                  return Center(
                    child: SizedBox(
                        width: 55.w,
                        height: 55.w,
                        child: const CircularProgressIndicator()),
                  );
                } else {
                  if (state.teachers.isNotEmpty) {
                    return SizedBox(
                      width: 1.sw,
                      height: 1.sh,
                      child: ListView.builder(
                        itemCount: teachers.length,
                        itemBuilder: (context, index) {
                          return CustomCardTeacherWidget(
                            name: teachers[index].basicInfo!.name,
                            phone:
                                '0${teachers[index].basicInfo!.phoneNumber.toInt()}',
                            method: () {
                              _addTeacherDialogMethod(
                                true,
                                teacher: teachers[index],
                              );
                            },
                            nameController: _controllerName,
                            phoneController: _controllerPhone,
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
                              'دبیری وجود ندارد\nبرای اضافه کردن بر روی + بزنید',
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
    } else {
      return const TeacherClassWidget();
    }
  }

  _addTeacherDialogMethod(bool isEditing, {Teacher? teacher}) {
    var appRputer = getIt.get<AppRouter>();
    NDialog(
      dialogStyle: DialogStyle(
          titlePadding: EdgeInsets.symmetric(horizontal: 0.r, vertical: 0.r),
          backgroundColor: GeneralConstants.backgroundColor,
          contentPadding: EdgeInsets.symmetric(horizontal: 8.r, vertical: 3.r)),
      title: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
          color: GeneralConstants.mainColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(12.r),
            bottomRight: Radius.circular(12.r),
          ),
        ),
        height: 50.h,
        child: Text(
          'افزودن دبیر',
          style: TextStyle(
              color: Colors.white, fontSize: 16.r, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ),
      content: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: 0.1.sh,
          minWidth: 0.75.sw,
          maxHeight: 0.8.sh,
          maxWidth: 0.8.sw,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 10.h),
              SizedBox(
                width: 0.6.sw,
                height: 0.055.sh,
                child: CustomTextField(
                  keyboardType: TextInputType.text,
                  maxLength: 15,
                  icon: Icons.person,
                  controller: _controllerName,
                ),
              ),
              SizedBox(height: 15.h),
              SizedBox(
                width: 0.6.sw,
                height: 0.055.sh,
                child: CustomTextField(
                  keyboardType: TextInputType.phone,
                  maxLength: 15,
                  icon: Icons.phone_android_rounded,
                  controller: _controllerPhone,
                ),
              ),
              SizedBox(height: 15.h),
              InkWell(
                onTap: () {
                  if (isEditing) {
                    getIt.get<TeacherBloc>().add(
                          TeacherEvent.updateTeacher(
                            teacher!.copyWith(
                              basicInfo: BasicInfoModel(
                                name: _controllerName.text,
                                phoneNumber:
                                    double.tryParse(_controllerPhone.text) ?? 0,
                              ),
                            ),
                          ),
                        );
                  } else {
                    getIt.get<TeacherBloc>().add(
                          TeacherEvent.addTeacher(
                            Teacher(
                              teacherId: 0,
                              basicInfo: BasicInfoModel(
                                name: _controllerName.text,
                                phoneNumber:
                                    double.tryParse(_controllerPhone.text) ?? 0,
                              ),
                            ),
                          ),
                        );
                  }
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: GeneralConstants.mainColor,
                    borderRadius: BorderRadius.all(Radius.circular(8.r)),
                  ),
                  width: 0.45.sw,
                  height: 40.h,
                  alignment: Alignment.center,
                  child: Text(
                    'تایید',
                    style: TextStyle(
                      fontSize: 16.r,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(height: 10.h),
            ],
          ),
        ),
      ),
    ).show(appRputer.navigatorKey.currentContext!);
  }
}
