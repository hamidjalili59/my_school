import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_school/src/config/constants/general_constants.dart';
import 'package:my_school/src/config/routes/router.dart';
import 'package:my_school/src/config/utils/function_helper.dart';
import 'package:my_school/src/features/auth/domain/models/auth_types.dart';
import 'package:my_school/src/features/auth/domain/models/otp_handshake_response.dart';
import 'package:my_school/src/features/classroom/domain/models/classroom_model.dart';
import 'package:my_school/src/injectable/injectable.dart';
import 'package:my_school/src/presentation/student/bloc/student/student_bloc.dart';
import 'package:my_school/src/presentation/student/widgets/add_student_dialog_widget.dart';
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      backgroundColor: GeneralConstants.backgroundColor,
      floatingActionButton: GeneralConstants.userType == UserType.admin
          ? FloatingActionButton.extended(
              onPressed: _addStudentDialog,
              label: SizedBox(
                  width: 0.3.sw, child: Icon(Icons.add_rounded, size: 28.sp)),
            )
          : GeneralConstants.userType == UserType.teacher
              ? const TeacherStudentPageFloatingWidget()
              : const SizedBox(),
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
                        GeneralConstants.userType == UserType.admin
                            ? Align(
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
                              )
                            : const SizedBox(),
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

  void _addStudentDialog() {
    final GlobalKey<FormBuilderState> formKey = GlobalKey<FormBuilderState>();
    NDialog(
      content: AddStudentDialogWidget(
        formKey: formKey,
        studentNameController: _studentNameController,
        studentParentController: _studentParentController,
        phonenumberController: _phonenumberController,
      ),
    ).show(context);
  }

//   void _studentGridBookDialog() {
//     // final GlobalKey<FormBuilderState> formKey = GlobalKey<FormBuilderState>();
//     NDialog(
//       dialogStyle: DialogStyle(
//           contentPadding: EdgeInsets.zero, backgroundColor: Colors.transparent),
//       content: SizedBox(
//         width: 0.5.sw,
//         height: 0.2.sh,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             Expanded(
//               flex: 1,
//               child: InkWell(
//                 onTap: () {
//                   getIt.get<AppRouter>().pop();
//                   getIt.get<AppRouter>().pushNamed('/class_rollcalls_page');
//                 },
//                 child: Container(
//                   color: Theme.of(context).colorScheme.secondary.withBlue(130),
//                   alignment: Alignment.center,
//                   child: Text(
//                     'حضورغیاب',
//                     style: Theme.of(context)
//                         .textTheme
//                         .headlineSmall!
//                         .copyWith(color: Colors.white),
//                   ),
//                 ),
//               ),
//             ),
//             Expanded(
//               flex: 1,
//               child: InkWell(
//                 onTap: () {
//                   getIt.get<AppRouter>().pop();
//                   getIt.get<AppRouter>().pushNamed('/add_score_for_class_page');
//                 },
//                 child: Container(
//                   color: Theme.of(context).colorScheme.secondary,
//                   alignment: Alignment.center,
//                   child: Text(
//                     'ثبت نمرات',
//                     style: Theme.of(context)
//                         .textTheme
//                         .headlineSmall!
//                         .copyWith(color: Colors.white),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     ).show(context);
//   }
}

class TeacherStudentPageFloatingWidget extends StatelessWidget {
  const TeacherStudentPageFloatingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.r),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 1, spreadRadius: 1),
        ],
      ),
      width: 180.w,
      height: 50.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: InkWell(
              onTap: () {
                getIt.get<AppRouter>().pushNamed('/class_rollcalls_page');
              },
              child: Container(
                decoration: BoxDecoration(
                    color: GeneralConstants.mainColor,
                    borderRadius: BorderRadius.circular(16.r)),
                alignment: Alignment.center,
                child: Text(
                  'حضورغیاب',
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: InkWell(
              onTap: () {
                getIt.get<AppRouter>().pushNamed('/add_score_for_class_page');
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16.r)),
                alignment: Alignment.center,
                child: Text(
                  'ثبت نمرات',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
