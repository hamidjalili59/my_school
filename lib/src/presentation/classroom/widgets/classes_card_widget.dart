import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:my_school/src/config/constants/general_constants.dart';
import 'package:my_school/src/config/routes/router.dart';
import 'package:my_school/src/config/utils/function_helper.dart';
import 'package:my_school/src/features/auth/domain/models/auth_types.dart';
import 'package:my_school/src/features/classroom/domain/models/classroom_model.dart';
import 'package:my_school/src/injectable/injectable.dart';
import 'package:my_school/src/presentation/classroom/bloc/classroom_bloc.dart';
import 'package:my_school/src/presentation/core/widgets/custom_textfield_widget.dart';
import 'package:ndialog/ndialog.dart';

class ClassesCardWidget extends StatelessWidget {
  final TextEditingController _classNameController =
      TextEditingController(text: '');
  ClassesCardWidget({
    Key? key,
    required this.classroom,
    required this.appRouter,
    this.isTeacher = false,
  }) : super(key: key);

  final bool isTeacher;
  final Classroom classroom;
  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.0.h),
      child: InkWell(
        onLongPress: GeneralConstants.userType == UserType.admin
            ? () {
                _classNameController.text = classroom.className;
                _updateClassroomDialogMethod(classroom: classroom);
              }
            : () {},
        onTap: () {
          // if(GeneralConstants.userType == UserType.teacher){
          // if (getIt.isRegistered<Classroom>()) {
          //   getIt.unregister<Classroom>();
          //   getIt.registerSingleton<Classroom>(classroom);
          // } else {
          //   getIt.registerSingleton<Classroom>(classroom);
          // }
          // }
          if (getIt.isRegistered<Classroom>()) {
            getIt.unregister<Classroom>();
            getIt.registerSingleton<Classroom>(classroom);
          } else {
            getIt.registerSingleton<Classroom>(classroom);
          }
          appRouter.pushNamed('/class_details_page');
        },
        child: SizedBox(
          width: 0.93.sw,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  alignment: Alignment.bottomLeft,
                  constraints: BoxConstraints(
                    maxHeight: 0.1.sh,
                    minHeight: 0.05.sh,
                    maxWidth: 0.93.sw,
                    minWidth: 0.92.sw,
                  ),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 0.1.r,
                        spreadRadius: 0.1,
                        offset: const Offset(-1, 1),
                      )
                    ],
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 22.0.w, bottom: 8.w),
                    child: Text(classroom.className,
                        style: TextStyle(
                            fontSize: 20.r, fontWeight: FontWeight.w600),
                        textAlign: TextAlign.right,
                        textDirection: TextDirection.rtl),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  width: 0.93.sw,
                  height: 0.1.sh,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.r),
                    child: SvgPicture.asset(
                      'assets/class_card_cover.svg',
                      fit: BoxFit.fill,
                      colorFilter: const ColorFilter.mode(
                        Color(0xff7258ae),
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: EdgeInsets.only(top: 5.h, right: 28.w),
                  child: Text("کلاس",
                      style: TextStyle(
                          fontSize: 22.r,
                          color: Colors.white,
                          fontWeight: FontWeight.w800),
                      textAlign: TextAlign.right,
                      textDirection: TextDirection.rtl),
                ),
              ),
              GeneralConstants.userType == UserType.admin
                  ? Align(
                      alignment: Alignment.bottomLeft,
                      child: InkWell(
                        onTap: () {
                          FunctionHelper().removeDialog(
                            'کلاس',
                            () => getIt.get<ClassroomBloc>().add(
                                  ClassroomEvent.removeClass(
                                    classroom.classID,
                                  ),
                                ),
                          );
                        },
                        child: Padding(
                          padding: EdgeInsets.only(top: 5.h, left: 18.w),
                          child: Icon(
                            Icons.close_rounded,
                            color: Colors.black45,
                            size: 24.r,
                          ),
                        ),
                      ),
                    )
                  : const SizedBox(),
            ],
          ),
        ),
      ),
    );
  }

  _updateClassroomDialogMethod({Classroom? classroom}) {
    final GlobalKey<FormBuilderState> formKey = GlobalKey<FormBuilderState>();
    if (classroom != null) {
      _classNameController.text = classroom.className;
    }
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
                bottomRight: Radius.circular(12.r))),
        // width: 0.15.sw,
        height: 50.h,
        child: Text(
          'تغییر اسم کلاس',
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
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 10.h),
                CustomTextField(
                  key: formKey,
                  name: 'class_name',
                  labelText: 'نام کلاس',
                  keyboardType: TextInputType.name,
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(
                        errorText: 'انتخاب اسم برای ساخت کلاس اجباری است'),
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
                  onSubmitted: (value) {
                    if (formKey.currentState?.validate() ?? false) {
                      getIt.get<ClassroomBloc>().add(
                            ClassroomEvent.updateClass(
                              Classroom(
                                classID: classroom!.classID,
                                schoolId: classroom.schoolId,
                                className: value!,
                              ),
                            ),
                          );
                      _classNameController.clear();
                      Navigator.pop(
                          getIt.get<AppRouter>().navigatorKey.currentContext!);
                    } else {}
                  },
                  controller: _classNameController,
                  initialValue: '',
                  width: 200.w,
                  heghit: 65.h,
                ),
                SizedBox(height: 15.h),
                BlocBuilder<ClassroomBloc, ClassroomState>(
                    bloc: getIt.get<ClassroomBloc>(),
                    builder: (context, classroomState) {
                      return IgnorePointer(
                        ignoring: classroomState.isLoading,
                        child: InkWell(
                          onTap: () {
                            if (classroomState.isLoading) {
                              return;
                            }
                            if (formKey.currentState?.validate() ?? false) {
                              getIt.get<ClassroomBloc>().add(
                                    ClassroomEvent.updateClass(
                                      Classroom(
                                        classID: classroom!.classID,
                                        schoolId: classroom.schoolId,
                                        className: _classNameController.text,
                                      ),
                                    ),
                                  );
                              _classNameController.clear();
                              Navigator.pop(getIt
                                  .get<AppRouter>()
                                  .navigatorKey
                                  .currentContext!);
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
                            child: classroomState.isLoading
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
