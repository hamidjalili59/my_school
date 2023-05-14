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
import 'package:my_school/src/features/course/domain/models/course_model/course.dart';
import 'package:my_school/src/injectable/injectable.dart';
import 'package:my_school/src/presentation/core/widgets/custom_textfield_widget.dart';
import 'package:my_school/src/presentation/course/bloc/course/course_bloc.dart';
import 'package:ndialog/ndialog.dart';

class CoursePage extends StatelessWidget {
  CoursePage({super.key});
  final TextEditingController _controller = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton.extended(
            icon: Icon(
              Icons.add_circle,
              color: Colors.white,
              size: 26.r,
            ),
            onPressed: () {
              _addCourseDialogMethod(false);
            },
            label: Text(
              'افزودن‌درس',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.r,
                  fontWeight: FontWeight.w700),
            ),
            backgroundColor: GeneralConstants.mainColor),
        backgroundColor: GeneralConstants.backgroundColor,
        body: BlocBuilder<CourseBloc, CourseState>(
          bloc: getIt.get<CourseBloc>(),
          builder: (context, state) {
            if (state.isLoading) {
              return Center(
                child: SizedBox(
                    width: 55.w,
                    height: 55.w,
                    child: const CircularProgressIndicator()),
              );
            } else {
              if (state.courses.isNotEmpty) {
                return SizedBox(
                  width: 1.sw,
                  height: 1.sh,
                  child: ListView.builder(
                    itemCount: state.courses.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          _addCourseDialogMethod(true,
                              course: state.courses[index]);
                        },
                        child: CourseTileWidget(
                          course: state.courses[index],
                        ),
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
                          'امتحانی وجود ندارد\nبرای اضافه کردن بر روی + بزنید',
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
        ),
      ),
    );
  }

  _addCourseDialogMethod(bool isEditing, {Course? course}) {
    final GlobalKey<FormBuilderState> formKey = GlobalKey<FormBuilderState>();
    if (course != null) {
      _controller.text = course.courseName;
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
          isEditing ? 'تغییر درس' : 'افزودن درس',
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
                  name: 'course_name',
                  keyboardType: TextInputType.name,
                  labelText: 'نام درس',
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(
                        errorText: 'انتخاب اسم برای ساخت درس اجباری است'),
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
                      if (isEditing) {
                        getIt.get<CourseBloc>().add(
                              CourseEvent.updateCourse(
                                course!.copyWith(courseName: _controller.text),
                              ),
                            );
                      } else {
                        getIt.get<CourseBloc>().add(
                              CourseEvent.addCourse(
                                _controller.text,
                              ),
                            );
                      }
                      _controller.clear();
                      Navigator.pop(
                          getIt.get<AppRouter>().navigatorKey.currentContext!);
                    } else {}
                  },
                  controller: _controller,
                  initialValue: '',
                  width: 200.w,
                  heghit: 65.h,
                ),
                SizedBox(height: 15.h),
                BlocBuilder<CourseBloc, CourseState>(
                    bloc: getIt.get<CourseBloc>(),
                    builder: (context, courseState) {
                      return IgnorePointer(
                        ignoring: courseState.isLoading,
                        child: InkWell(
                          onTap: () {
                            if (courseState.isLoading) {
                              return;
                            }
                            if (formKey.currentState?.validate() ?? false) {
                              if (isEditing) {
                                getIt.get<CourseBloc>().add(
                                      CourseEvent.updateCourse(
                                        course!.copyWith(
                                            courseName: _controller.text),
                                      ),
                                    );
                              } else {
                                getIt.get<CourseBloc>().add(
                                      CourseEvent.addCourse(
                                        _controller.text,
                                      ),
                                    );
                              }
                              _controller.clear();
                              Navigator.pop(getIt
                                  .get<AppRouter>()
                                  .navigatorKey
                                  .currentContext!);
                            } else {}
                            // if (isEditing) {
                            //   getIt.get<CourseBloc>().add(
                            //         CourseEvent.updateCourse(
                            //           course!
                            //               .copyWith(courseName: _controller.text),
                            //         ),
                            //       );
                            // } else {
                            //   getIt.get<CourseBloc>().add(
                            //         CourseEvent.addCourse(
                            //           _controller.text,
                            //         ),
                            //       );
                            // }
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
                            child: courseState.isLoading
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

class CourseTileWidget extends StatelessWidget {
  final Course course;
  const CourseTileWidget({
    super.key,
    required this.course,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8.0.h),
      child: Container(
        width: 0.95.sw,
        height: 0.1.sh,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
                color: Colors.black38,
                offset: Offset(3, 0),
                blurRadius: 4,
                spreadRadius: 0.5),
          ],
          image: const DecorationImage(
              image: AssetImage(
                'assets/art_2.png',
              ),
              fit: BoxFit.fill),
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Stack(
          children: [
            GeneralConstants.userType == UserType.parent
                ? const SizedBox()
                : Align(
                    alignment: Alignment.topRight,
                    child: InkWell(
                      onTap: () => FunctionHelper().removeDialog(
                        'درس',
                        () => getIt.get<CourseBloc>().add(
                              CourseEvent.removeCourse(course.courseId),
                            ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 8.0.w, vertical: 5.h),
                        child: Icon(Icons.close, size: 26.r),
                      ),
                    ),
                  ),
            Align(
              alignment: Alignment.center,
              child: Text(
                course.courseName,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24.r,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
