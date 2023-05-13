import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_school/src/config/constants/general_constants.dart';
import 'package:my_school/src/config/utils/function_helper.dart';
import 'package:my_school/src/features/auth/domain/models/auth_types.dart';
import 'package:my_school/src/features/exam/domain/models/exam_model.dart';
import 'package:my_school/src/injectable/injectable.dart';
import 'package:my_school/src/presentation/exam/bloc/exam/exam_bloc.dart';

class CustomCardExamWidget extends StatelessWidget {
  const CustomCardExamWidget({
    Key? key,
    required this.exam,
  }) : super(key: key);
  final Exam exam;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onLongPress: GeneralConstants.userType == UserType.parent
          ? () {}
          : () => FunctionHelper().removeDialog(
              'امتحان',
              () =>
                  getIt.get<ExamBloc>().add(ExamEvent.removeExam(exam.examId))),
      child: SizedBox(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(top: 12.0.h, left: 16.w, right: 12.w),
                child: Container(
                  constraints: BoxConstraints(
                      maxHeight: 0.5.sh, minHeight: 0.05.sh, minWidth: 0.85.sw),
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
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: 50.0.h, left: 18.w, right: 18.w, bottom: 15.h),
                    child: Text(
                      exam.examDescription,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14.r,
                        color: Colors.black87,
                      ),
                      textAlign: TextAlign.center,
                      textDirection: TextDirection.rtl,
                    ),
                  ),
                ),
              ),
            ),
            Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: EdgeInsets.only(top: 8.0.h, right: 5.0.w),
                  child: Container(
                    alignment: Alignment.center,
                    width: 155.w,
                    height: 40.h,
                    decoration: BoxDecoration(
                        color: GeneralConstants.mainColor,
                        borderRadius: BorderRadiusDirectional.circular(12.r),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black38,
                              blurRadius: 6,
                              spreadRadius: 0.7,
                              offset: Offset(-1.8, 2))
                        ]),
                    child: Text(
                      exam.teacherName,
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 14.r,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                )),
            Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(top: 12.0.h, left: 36.0.w),
                  child: Row(
                    children: [
                      Icon(
                        exam.isDone
                            ? Icons.check_box_rounded
                            : Icons.check_box_outline_blank_rounded,
                        size: 26.r,
                        color: exam.isDone ? Colors.green : Colors.black,
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 60.w,
                        height: 40.h,
                        child: Text(
                          'انجام‌شده',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 14.r,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
