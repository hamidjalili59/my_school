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
import 'package:my_school/src/features/auth/domain/models/otp_handshake_response.dart';
import 'package:my_school/src/features/classroom/domain/models/classroom_model.dart';
import 'package:my_school/src/features/core/models/basic_info_model.dart';
import 'package:my_school/src/features/student/domain/models/student_model/student.dart';
import 'package:my_school/src/injectable/injectable.dart';
import 'package:my_school/src/presentation/core/widgets/custom_textfield_widget.dart';
import 'package:my_school/src/presentation/student/bloc/student/student_bloc.dart';
import 'package:my_school/src/presentation/student/widgets/custom_student_details.dart';
import 'package:ndialog/ndialog.dart';

class ClassStudentPage extends StatefulWidget {
  const ClassStudentPage({
    Key? key,
  }) : super(key: key);

  @override
  State<ClassStudentPage> createState() => _ClassStudentPageState();
}

class _ClassStudentPageState extends State<ClassStudentPage> {
  final TextEditingController _controllerExamDescription =
      TextEditingController(text: '');
  final TextEditingController _studentNameController =
      TextEditingController(text: '');
  final TextEditingController _studentParentController =
      TextEditingController(text: '');
  final TextEditingController _phonenumberController =
      TextEditingController(text: '');
  @override
  void initState() {
    super.initState();
    if (GeneralConstants.userType == UserType.parent) {
      getIt.get<StudentBloc>().add(StudentEvent.getStudentsParent(
          getIt.get<OtpHandshakeResponse>().phoneNumber));
    } else {
      getIt.get<StudentBloc>().add(
            StudentEvent.getStudents(
              getIt.get<Classroom>().classID,
            ),
          );
    }
  }

  @override
  void dispose() {
    _controllerExamDescription.dispose();
    _studentNameController.dispose();
    _studentParentController.dispose();
    _phonenumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      backgroundColor: GeneralConstants.backgroundColor,
      floatingActionButton: GeneralConstants.userType == UserType.admin
          ? Padding(
              padding: EdgeInsets.only(bottom: 16.w, right: 8.w),
              child: SizedBox(
                width: 0.5.sw,
                // child: Row(
                // children: [
                // Flexible(
                //   flex: 2,
                child: Material(
                  elevation: 5,
                  color: GeneralConstants.mainColor,
                  borderRadius: BorderRadius.circular(16.r),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(16.r),
                    splashColor: GeneralConstants.backgroundColor,
                    onTap: _addStudentDialog,
                    child: Container(
                      alignment: Alignment.center,
                      width: 60.w,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(16.r),
                      ),
                      child: Icon(
                        Icons.add_rounded,
                        color: Colors.white,
                        size: 26.r,
                      ),
                    ),
                  ),
                ),
                // ),
                // SizedBox(width: 5.w),
                // Flexible(
                //   flex: 5,
                //   child: Material(
                //     elevation: 5,
                //     color: GeneralConstants.mainColor,
                //     borderRadius: BorderRadius.circular(16.r),
                //     child: InkWell(
                //       borderRadius: BorderRadius.circular(16.r),
                //       splashColor: GeneralConstants.backgroundColor,
                //       onTap: _enterScoreDialogMethod,
                //       child: Container(
                //         alignment: Alignment.center,
                //         width: 140.w,
                //         height: 60,
                //         decoration: BoxDecoration(
                //           color: Colors.transparent,
                //           borderRadius: BorderRadius.circular(16.r),
                //         ),
                //         child: Row(
                //           mainAxisAlignment: MainAxisAlignment.center,
                //           crossAxisAlignment: CrossAxisAlignment.center,
                //           children: [
                //             const Icon(Icons.menu_book_rounded,
                //                 color: Colors.white),
                //             SizedBox(width: 10.w),
                //             Text(
                //               'ثبت نمره',
                //               style: TextStyle(
                //                 color: Colors.white,
                //                 fontSize: 16.r,
                //                 fontWeight: FontWeight.w900,
                //               ),
                //             ),
                //           ],
                //         ),
                //       ),
                //     ),
                //   ),
                // ),
                // ],
                // ),
              ),
            )
          : null,
      body: BlocBuilder<StudentBloc, StudentState>(
        bloc: getIt.get<StudentBloc>(),
        builder: (context, studentState) {
          if (studentState.isLoading) {
            return Center(
              child: SizedBox(
                  width: 55.w,
                  height: 55.w,
                  child: const CircularProgressIndicator()),
            );
          } else {
            if (studentState.students.isNotEmpty) {
              return GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20.w,
                  crossAxisSpacing: 20.w,
                  childAspectRatio: 9 / 16,
                  mainAxisExtent: 0.27.sh,
                ),
                padding:
                    EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 20.h),
                itemCount: studentState.students.isNotEmpty
                    ? studentState.students.length
                    : 1,
                itemBuilder: (context, index) {
                  return SizedBox(
                    width: 0.4.sw,
                    height: 0.28.sh,
                    child: Stack(
                      children: [
                        CustomClassDetailButtonWidget(
                          icon: Icons.person,
                          student: studentState.students[index],
                        ),
                        GeneralConstants.userType == UserType.parent
                            ? const SizedBox()
                            : Align(
                                alignment: Alignment.topRight,
                                child: InkWell(
                                  onTap: () => FunctionHelper().removeDialog(
                                    'دانش آموز',
                                    () => getIt.get<StudentBloc>().add(
                                          StudentEvent.removeStudent(
                                              studentState
                                                  .students[index].studentId),
                                        ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 16.0.w, vertical: 8.h),
                                    child: Icon(Icons.close, size: 26.r),
                                  ),
                                ),
                              ),
                      ],
                    ),
                  );
                },
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
                        'دانش آموزی وجود ندارد\nبرای اضافه کردن بر روی + بزنید',
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
    );
  }

  // void _graidBookDialogMethod() {
  //   var appRputer = getIt.get<AppRouter>();
  //   NDialog(
  //     dialogStyle: DialogStyle(
  //         titlePadding: EdgeInsets.symmetric(horizontal: 0.r, vertical: 0.r),
  //         backgroundColor: GeneralConstants.backgroundColor,
  //         elevation: 8,
  //         titleDivider: false,
  //         titleTextStyle:
  //             TextStyle(fontSize: 16.r, fontWeight: FontWeight.w900),
  //         contentPadding: EdgeInsets.symmetric(horizontal: 0.r, vertical: 0.r)),
  //     title: Padding(
  //       padding: EdgeInsets.only(top: 12.0.h),
  //       child: Text(
  //         'دفتر نمره',
  //         style: TextStyle(
  //             color: Colors.black, fontSize: 18.r, fontWeight: FontWeight.w900),
  //         textAlign: TextAlign.center,
  //       ),
  //     ),
  //     content: SizedBox(
  //       height: 0.4.sh,
  //       width: 0.85.sw,
  //       child: SingleChildScrollView(
  //         child: Padding(
  //           padding: EdgeInsets.only(top: 16.0.h),
  //           child: Row(
  //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //             children: [
  //               InkWell(
  //                 onTap: _addExamDialogMethod,
  //                 child: Container(
  //                   alignment: Alignment.center,
  //                   decoration: BoxDecoration(
  //                     color: GeneralConstants.mainColor,
  //                     borderRadius: BorderRadius.circular(12.r),
  //                     boxShadow: const [
  //                       BoxShadow(
  //                           color: Colors.black26,
  //                           blurRadius: 3,
  //                           offset: Offset(-3, 2)),
  //                       BoxShadow(
  //                           color: Colors.black12,
  //                           blurRadius: 2,
  //                           offset: Offset(2, 3)),
  //                     ],
  //                   ),
  //                   width: 0.35.sw,
  //                   height: 0.35.sh,
  //                   child: Column(
  //                     mainAxisAlignment: MainAxisAlignment.center,
  //                     children: [
  //                       Row(
  //                         mainAxisAlignment: MainAxisAlignment.center,
  //                         children: [
  //                           Icon(Icons.text_snippet_rounded,
  //                               color: Colors.white, size: 36.r),
  //                           SizedBox(width: 8.w),
  //                           Icon(Icons.edit, color: Colors.white, size: 42.r),
  //                         ],
  //                       ),
  //                       Text('ثبت امتحان',
  //                           style: TextStyle(
  //                               fontWeight: FontWeight.w900,
  //                               fontSize: 16.r,
  //                               color: Colors.white)),
  //                     ],
  //                   ),
  //                 ),
  //               ),
  //               Column(
  //                 mainAxisSize: MainAxisSize.max,
  //                 mainAxisAlignment: MainAxisAlignment.center,
  //                 children: [
  //                   InkWell(
  //                     onTap: () {
  //                       getIt
  //                           .get<AppRouter>()
  //                           .pushNamed('/class_rollcalls_page');
  //                     },
  //                     child: Container(
  //                       alignment: Alignment.center,
  //                       decoration: BoxDecoration(
  //                         color: GeneralConstants.mainColor,
  //                         borderRadius: BorderRadius.circular(12.r),
  //                         boxShadow: const [
  //                           BoxShadow(
  //                               color: Colors.black26,
  //                               blurRadius: 3,
  //                               offset: Offset(4, 2)),
  //                           BoxShadow(
  //                               color: Colors.black12,
  //                               blurRadius: 2,
  //                               offset: Offset(-2, 3)),
  //                         ],
  //                       ),
  //                       width: 0.4.sw,
  //                       height: 0.165.sh,
  //                       child: Column(
  //                         mainAxisAlignment: MainAxisAlignment.center,
  //                         children: [
  //                           Row(
  //                             mainAxisAlignment: MainAxisAlignment.center,
  //                             children: [
  //                               Icon(Icons.crop_square_outlined,
  //                                   color: Colors.white, size: 42.r),
  //                               SizedBox(width: 2.w),
  //                               Icon(Icons.check_box_rounded,
  //                                   color: Colors.white, size: 36.r),
  //                             ],
  //                           ),
  //                           Text('حضور غیاب',
  //                               style: TextStyle(
  //                                   fontWeight: FontWeight.w900,
  //                                   fontSize: 16.r,
  //                                   color: Colors.white)),
  //                         ],
  //                       ),
  //                     ),
  //                   ),
  //                   SizedBox(height: 14.h),
  //                   InkWell(
  //                     onTap: () {
  //                       getIt
  //                           .get<AppRouter>()
  //                           .pushNamed('/add_score_for_class_page');
  //                     },
  //                     child: Container(
  //                       alignment: Alignment.center,
  //                       decoration: BoxDecoration(
  //                           color: GeneralConstants.mainColor,
  //                           borderRadius: BorderRadius.circular(12.r),
  //                           boxShadow: const [
  //                             BoxShadow(
  //                                 color: Colors.black26,
  //                                 blurRadius: 3,
  //                                 offset: Offset(4, 3)),
  //                             BoxShadow(
  //                                 color: Colors.black12,
  //                                 blurRadius: 2,
  //                                 offset: Offset(-2, 4)),
  //                           ]),
  //                       width: 0.4.sw,
  //                       height: 0.165.sh,
  //                       child: Column(
  //                         mainAxisAlignment: MainAxisAlignment.center,
  //                         children: [
  //                           Row(
  //                             mainAxisAlignment: MainAxisAlignment.center,
  //                             children: [
  //                               Column(
  //                                 mainAxisAlignment: MainAxisAlignment.end,
  //                                 children: [
  //                                   Icon(Icons.check,
  //                                       color: Colors.white, size: 16.r),
  //                                   Icon(Icons.close,
  //                                       color: Colors.white, size: 16.r),
  //                                 ],
  //                               ),
  //                               SizedBox(width: 2.w),
  //                               Icon(Icons.edit,
  //                                   color: Colors.white, size: 42.r),
  //                             ],
  //                           ),
  //                           Text('ثبت نمره',
  //                               style: TextStyle(
  //                                   fontWeight: FontWeight.w900,
  //                                   fontSize: 16.r,
  //                                   color: Colors.white)),
  //                         ],
  //                       ),
  //                     ),
  //                   ),
  //                 ],
  //               ),
  //             ],
  //           ),
  //         ),
  //       ),
  //     ),
  //   ).show(appRputer.navigatorKey.currentContext!);
  // }

  // ignore: unused_element
  // _addExamDialogMethod() {
  //   final GlobalKey<FormBuilderState> formKey = GlobalKey<FormBuilderState>();
  //   var appRputer = getIt.get<AppRouter>();
  //   NDialog(
  //     dialogStyle: DialogStyle(
  //         titlePadding: EdgeInsets.symmetric(horizontal: 0.r, vertical: 0.r),
  //         backgroundColor: GeneralConstants.backgroundColor,
  //         contentPadding: EdgeInsets.symmetric(horizontal: 8.r, vertical: 3.r)),
  //     title: Container(
  //       alignment: Alignment.center,
  //       padding: EdgeInsets.zero,
  //       decoration: BoxDecoration(
  //           color: GeneralConstants.mainColor,
  //           borderRadius: BorderRadius.only(
  //               bottomLeft: Radius.circular(12.r),
  //               bottomRight: Radius.circular(12.r))),
  //       // width: 0.15.sw,
  //       height: 50.h,
  //       child: Text(
  //         'افزودن امتحان',
  //         style: TextStyle(
  //             color: Colors.white, fontSize: 16.r, fontWeight: FontWeight.bold),
  //         textAlign: TextAlign.center,
  //       ),
  //     ),
  //     content: ConstrainedBox(
  //       constraints: BoxConstraints(
  //         minHeight: 0.1.sh,
  //         minWidth: 0.75.sw,
  //         maxHeight: 0.8.sh,
  //         maxWidth: 0.8.sw,
  //       ),
  //       child: SingleChildScrollView(
  //         child: FormBuilder(
  //           key: formKey,
  //           child: Column(
  //             mainAxisSize: MainAxisSize.min,
  //             children: [
  //               SizedBox(height: 10.h),
  //               CustomTextField(
  //                 keyboardType: TextInputType.text,
  //                 name: 'exam_description',
  //                 labelText: 'توضیح امتحان',
  //                 validator: FormBuilderValidators.compose([
  //                   FormBuilderValidators.required(
  //                       errorText: 'انتخاب توضیح برای ساخت امتحان اجباری است'),
  //                   FormBuilderValidators.maxLength(
  //                     100,
  //                     errorText:
  //                         'لطفا توضیحاتی که انتخاب میکنید کمتر از 100 حرف داشته باشد',
  //                   ),
  //                   FormBuilderValidators.minLength(
  //                     5,
  //                     errorText:
  //                         'لطفا توضیحاتی که انتخاب میکنید بیشتر از 5 حرف داشته باشد',
  //                   ),
  //                 ]),
  //                 controller: _controllerExamDescription,
  //                 initialValue: '',
  //                 width: 200.w,
  //                 heghit: 65.h,
  //               ),
  //               SizedBox(height: 15.h),
  //               Container(
  //                 decoration: BoxDecoration(
  //                   color: GeneralConstants.mainColor,
  //                   borderRadius: BorderRadius.all(Radius.circular(8.r)),
  //                 ),
  //                 width: 0.45.sw,
  //                 height: 40.h,
  //                 alignment: Alignment.center,
  //                 child: Text(
  //                   'تایید',
  //                   style: TextStyle(
  //                     fontSize: 16.r,
  //                     fontWeight: FontWeight.w700,
  //                     color: Colors.white,
  //                   ),
  //                   textAlign: TextAlign.center,
  //                 ),
  //               ),
  //               SizedBox(height: 10.h),
  //             ],
  //           ),
  //         ),
  //       ),
  //     ),
  //   ).show(appRputer.navigatorKey.currentContext!);
  // }

  void _addStudentDialog() {
    final GlobalKey<FormBuilderState> formKey = GlobalKey<FormBuilderState>();
    NDialog(
      content: SizedBox(
        width: 0.75.sw,
        height: 0.68.sh,
        child: FormBuilder(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: 0.45.sw,
                  height: 0.6.sw,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black38,
                        blurRadius: 3,
                        spreadRadius: 1,
                        offset: Offset(1, 3),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(34.0.r),
                    child: Icon(Icons.person_rounded,
                        size: 46.r, color: Colors.black87),
                  ),
                ),
                CustomTextField(
                  haveIcon: true,
                  sIcon: Icons.person_rounded,
                  name: 'student_name',
                  labelText: 'اسم دانش آموز',
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(
                        errorText: 'انتخاب اسم برای ساخت دانش آموز اجباری است'),
                    FormBuilderValidators.maxLength(
                      30,
                      errorText:
                          'لطفا اسمی که انتخاب میکنید کمتر از 30 حرف داشته باشد',
                    ),
                    FormBuilderValidators.minLength(
                      5,
                      errorText:
                          'لطفا اسمی که انتخاب میکنید بیشتر از 5 حرف داشته باشد',
                    ),
                  ]),
                  controller: _studentNameController,
                  initialValue: '',
                  width: 200.w,
                  heghit: 65.h,
                  keyboardType: TextInputType.name,
                ),
                SizedBox(height: 5.h),
                CustomTextField(
                  haveIcon: true,
                  sIcon: Icons.family_restroom_rounded,
                  name: 'parent_name',
                  labelText: 'اسم والد',
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(
                        errorText:
                            'انتخاب اسم والد برای ساخت دانش آموز اجباری است'),
                    FormBuilderValidators.maxLength(
                      30,
                      errorText:
                          'لطفا اسمی که انتخاب میکنید کمتر از 30 حرف داشته باشد',
                    ),
                    FormBuilderValidators.minLength(
                      5,
                      errorText:
                          'لطفا اسمی که انتخاب میکنید بیشتر از 5 حرف داشته باشد',
                    ),
                  ]),
                  controller: _studentParentController,
                  initialValue: '',
                  width: 200.w,
                  heghit: 65.h,
                  keyboardType: TextInputType.name,
                ),
                SizedBox(height: 5.h),
                CustomTextField(
                  haveIcon: true,
                  sIcon: Icons.phone_rounded,
                  name: 'phone',
                  labelText: 'شماره تماس',
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(
                        errorText:
                            'انتخاب شماره برای ساخت دانش آموز اجباری است'),
                    FormBuilderValidators.numeric(
                        errorText: 'شماره تلفن باید عدد باشد'),
                    FormBuilderValidators.equalLength(11,
                        errorText:
                            'شماره تلفن درست نیست ، شماره باید 11 رقم باشد و با صفر شروع شود'),
                  ]),
                  controller: _phonenumberController,
                  initialValue: '',
                  width: 200.w,
                  heghit: 65.h,
                  keyboardType: TextInputType.phone,
                ),
                SizedBox(height: 10.h),
                BlocBuilder<StudentBloc, StudentState>(
                    bloc: getIt.get<StudentBloc>(),
                    builder: (context, studentStateBotton) {
                      return IgnorePointer(
                        ignoring: studentStateBotton.isLoading,
                        child: MaterialButton(
                          onPressed: () {
                            if (!studentStateBotton.isLoading) {
                              if (formKey.currentState?.validate() ?? false) {
                                getIt.get<StudentBloc>().add(
                                      StudentEvent.addStudent(
                                        Student(
                                            basicInfo: BasicInfoModel(
                                              name: _studentNameController.text,
                                              phoneNumber: double.tryParse(
                                                      _phonenumberController
                                                          .text) ??
                                                  0,
                                            ),
                                            classId:
                                                getIt.get<Classroom>().classID),
                                        _studentParentController.text,
                                      ),
                                    );
                                _studentNameController.clear();
                                _phonenumberController.clear();
                                _studentParentController.clear();

                                Navigator.pop(getIt
                                    .get<AppRouter>()
                                    .navigatorKey
                                    .currentContext!);
                              } else {}
                            }
                          },
                          color: GeneralConstants.mainColor,
                          elevation: 5,
                          height: 55.h,
                          minWidth: 0.65.sw,
                          child: studentStateBotton.isLoading
                              ? const CircularProgressIndicator()
                              : Text(
                                  'ثبت دانش‌آموز',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18.r,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                        ),
                      );
                    }),
              ],
            ),
          ),
        ),
      ),
    ).show(context);
  }
}
