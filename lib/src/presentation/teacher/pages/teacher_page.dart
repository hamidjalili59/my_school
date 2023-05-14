import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:my_school/src/config/constants/general_constants.dart';
import 'package:my_school/src/config/routes/router.dart';
import 'package:my_school/src/features/core/models/basic_info_model.dart';
import 'package:my_school/src/features/teacher/domain/models/teacher.dart';
import 'package:my_school/src/injectable/injectable.dart';
import 'package:my_school/src/presentation/core/widgets/custom_textfield_widget.dart';
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
              _controllerName.clear();
              _controllerPhone.clear();
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
                            teacher: teachers[index],
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
    final GlobalKey<FormBuilderState> formKey = GlobalKey<FormBuilderState>();
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
          isEditing ? 'تغییر دبیر' : 'افزودن دبیر',
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
        child: FormBuilder(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 10.h),
                CustomTextField(
                  haveIcon: true,
                  sIcon: Icons.person_rounded,
                  name: 'teacher_name',
                  labelText: 'اسم دبیر',
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(
                        errorText: 'انتخاب اسم برای ساخت دبیر اجباری است'),
                    FormBuilderValidators.maxLength(
                      30,
                      errorText:
                          'لطفا اسمی که انتخاب میکنید کمتر از 30 حرف داشته باشد',
                    ),
                    FormBuilderValidators.minLength(
                      3,
                      errorText:
                          'لطفا اسمی که انتخاب میکنید بیشتر از 3 حرف داشته باشد',
                    ),
                  ]),
                  controller: _controllerName,
                  initialValue: '',
                  width: 200.w,
                  heghit: 65.h,
                  keyboardType: TextInputType.name,
                ),
                CustomTextField(
                  haveIcon: true,
                  sIcon: Icons.phone,
                  name: 'teacher_phone',
                  labelText: 'شماره دبیر',
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(
                        errorText: 'انتخاب شماره برای ساخت دبیر اجباری است'),
                    FormBuilderValidators.numeric(
                        errorText: 'شماره تلفن باید عدد باشد'),
                    FormBuilderValidators.equalLength(11,
                        errorText:
                            'شماره تلفن درست نیست ، شماره باید 11 رقم باشد و با صفر شروع شود'),
                  ]),
                  controller: _controllerPhone,
                  initialValue: '',
                  width: 200.w,
                  heghit: 65.h,
                  keyboardType: TextInputType.phone,
                ),
                SizedBox(height: 15.h),
                BlocBuilder<TeacherBloc, TeacherState>(
                    bloc: getIt.get<TeacherBloc>(),
                    builder: (context, teacherState) {
                      return IgnorePointer(
                        ignoring: teacherState.isLoading,
                        child: InkWell(
                          onTap: () {
                            if (teacherState.isLoading) {
                              return;
                            }
                            if (formKey.currentState?.validate() ?? false) {
                              if (isEditing) {
                                getIt.get<TeacherBloc>().add(
                                      TeacherEvent.updateTeacher(
                                        teacher!.copyWith(
                                          basicInfo: BasicInfoModel(
                                            name: _controllerName.text,
                                            phoneNumber: double.tryParse(
                                                    _controllerPhone.text) ??
                                                0,
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
                                            phoneNumber: double.tryParse(
                                                    _controllerPhone.text) ??
                                                0,
                                          ),
                                        ),
                                      ),
                                    );
                              }
                            } else {}
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: GeneralConstants.mainColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.r)),
                            ),
                            width: 0.45.sw,
                            height: 40.h,
                            alignment: Alignment.center,
                            child: teacherState.isLoading
                                ? const CircularProgressIndicator()
                                : Text(
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
                      );
                    }),
                SizedBox(height: 10.h),
              ],
            ),
          ),
        ),
      ),
    ).show(appRputer.navigatorKey.currentContext!);
  }
}
