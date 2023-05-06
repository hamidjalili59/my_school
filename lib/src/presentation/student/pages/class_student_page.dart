import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_school/src/config/constants/general_constants.dart';
import 'package:my_school/src/config/routes/router.dart';
import 'package:my_school/src/features/classroom/domain/models/classroom_model.dart';
import 'package:my_school/src/injectable/injectable.dart';
import 'package:my_school/src/presentation/auth/widgets/textfield_custom.dart';
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
  @override
  void initState() {
    super.initState();
    getIt.get<StudentBloc>().add(
          StudentEvent.getStudents(
            getIt.get<Classroom>().classID!,
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      backgroundColor: GeneralConstants.backgroundColor,
      floatingActionButton: Padding(
        padding: EdgeInsets.only(bottom: 16.w, right: 8.w),
        child: SizedBox(
          width: 0.5.sw,
          child: Row(
            children: [
              Flexible(
                flex: 2,
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
              ),
              SizedBox(width: 5.w),
              Flexible(
                flex: 5,
                child: Material(
                  elevation: 5,
                  color: GeneralConstants.mainColor,
                  borderRadius: BorderRadius.circular(16.r),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(16.r),
                    splashColor: GeneralConstants.backgroundColor,
                    onTap: _graidBookDialogMethod,
                    child: Container(
                      alignment: Alignment.center,
                      width: 140.w,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(16.r),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(Icons.menu_book_rounded,
                              color: Colors.white),
                          SizedBox(width: 10.w),
                          Text(
                            'دفتر نمره',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.r,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: BlocBuilder<StudentBloc, StudentState>(
        bloc: getIt.get<StudentBloc>(),
        builder: (context, studentState) {
          return GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 20.w,
                crossAxisSpacing: 20.w,
                childAspectRatio: 9 / 16,
                mainAxisExtent: 0.27.sh),
            padding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 20.h),
            itemCount: studentState.students.length,
            itemBuilder: (context, index) {
              return CustomClassDetailButtonWidget(
                titleIcon: Icons.person,
                title: studentState.students[index].basicInfo!.name,
              );
            },
          );
        },
      ),
    );
  }

  void _graidBookDialogMethod() {
    var appRputer = getIt.get<AppRouter>();
    NDialog(
      dialogStyle: DialogStyle(
          titlePadding: EdgeInsets.symmetric(horizontal: 0.r, vertical: 0.r),
          backgroundColor: GeneralConstants.backgroundColor,
          elevation: 8,
          titleDivider: false,
          titleTextStyle:
              TextStyle(fontSize: 16.r, fontWeight: FontWeight.w900),
          contentPadding: EdgeInsets.symmetric(horizontal: 0.r, vertical: 0.r)),
      title: Padding(
        padding: EdgeInsets.only(top: 12.0.h),
        child: Text(
          'دفتر نمره',
          style: TextStyle(
              color: Colors.black, fontSize: 18.r, fontWeight: FontWeight.w900),
          textAlign: TextAlign.center,
        ),
      ),
      content: SizedBox(
        height: 0.4.sh,
        width: 0.85.sw,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 16.0.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: _addExamDialogMethod,
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: GeneralConstants.mainColor,
                      borderRadius: BorderRadius.circular(12.r),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black26,
                            blurRadius: 3,
                            offset: Offset(-3, 2)),
                        BoxShadow(
                            color: Colors.black12,
                            blurRadius: 2,
                            offset: Offset(2, 3)),
                      ],
                    ),
                    width: 0.35.sw,
                    height: 0.35.sh,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.text_snippet_rounded,
                                color: Colors.white, size: 36.r),
                            SizedBox(width: 8.w),
                            Icon(Icons.edit, color: Colors.white, size: 42.r),
                          ],
                        ),
                        Text('ثبت امتحان',
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 16.r,
                                color: Colors.white)),
                      ],
                    ),
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        getIt
                            .get<AppRouter>()
                            .pushNamed('/class_rollcalls_page');
                      },
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: GeneralConstants.mainColor,
                          borderRadius: BorderRadius.circular(12.r),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black26,
                                blurRadius: 3,
                                offset: Offset(4, 2)),
                            BoxShadow(
                                color: Colors.black12,
                                blurRadius: 2,
                                offset: Offset(-2, 3)),
                          ],
                        ),
                        width: 0.4.sw,
                        height: 0.165.sh,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.crop_square_outlined,
                                    color: Colors.white, size: 42.r),
                                SizedBox(width: 2.w),
                                Icon(Icons.check_box_rounded,
                                    color: Colors.white, size: 36.r),
                              ],
                            ),
                            Text('حضور غیاب',
                                style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 16.r,
                                    color: Colors.white)),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 14.h),
                    InkWell(
                      onTap: () {
                        getIt
                            .get<AppRouter>()
                            .pushNamed('/add_score_for_class_page');
                      },
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: GeneralConstants.mainColor,
                            borderRadius: BorderRadius.circular(12.r),
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.black26,
                                  blurRadius: 3,
                                  offset: Offset(4, 3)),
                              BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 2,
                                  offset: Offset(-2, 4)),
                            ]),
                        width: 0.4.sw,
                        height: 0.165.sh,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Icon(Icons.check,
                                        color: Colors.white, size: 16.r),
                                    Icon(Icons.close,
                                        color: Colors.white, size: 16.r),
                                  ],
                                ),
                                SizedBox(width: 2.w),
                                Icon(Icons.edit,
                                    color: Colors.white, size: 42.r),
                              ],
                            ),
                            Text('ثبت نمره',
                                style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 16.r,
                                    color: Colors.white)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    ).show(appRputer.navigatorKey.currentContext!);
  }

  // ignore: unused_element
  _addExamDialogMethod() {
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
                height: 0.155.sh,
                child: CustomTextField(
                  keyboardType: TextInputType.text,
                  maxLength: 200,
                  minLines: 2,
                  maxLines: 6,
                  icon: Icons.note_add_rounded,
                  controller: _controllerExamDescription,
                ),
              ),
              SizedBox(height: 15.h),
              Container(
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
              SizedBox(height: 10.h),
            ],
          ),
        ),
      ),
    ).show(appRputer.navigatorKey.currentContext!);
  }

  void _addStudentDialog() {
    NDialog(
      content: SizedBox(width: 0.5.sw, height: 0.5.sh),
    ).show(context);
  }
}
