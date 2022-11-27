import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_school/src/config/constants/general_constants.dart';
import 'package:my_school/src/config/routes/router.dart';
import 'package:my_school/src/injectable/injectable.dart';
import 'package:my_school/src/presentation/auth/widgets/textfield_custom.dart';
import 'package:my_school/src/presentation/exam/widget/custom_card_exam_widget.dart';
import 'package:ndialog/ndialog.dart';

class ExamPage extends StatelessWidget {
  ExamPage({super.key});
  final TextEditingController _controllerExamDescription =
      TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      backgroundColor: GeneralConstants.backgroundColor,
      floatingActionButton: Padding(
        padding: EdgeInsets.only(bottom: 16.w, right: 8.w),
        child: Material(
          elevation: 5,
          color: GeneralConstants.mainColor,
          borderRadius: BorderRadius.circular(16.r),
          child: InkWell(
            borderRadius: BorderRadius.circular(16.r),
            splashColor: GeneralConstants.backgroundColor,
            onTap: _addExamDialogMethod,
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
                  Icon(Icons.note_add_rounded, color: Colors.white, size: 22.r),
                  SizedBox(width: 10.w),
                  Text(
                    'ثبت امتحان',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22.r,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: SizedBox(
        width: 1.sw,
        height: 1.sh,
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomCardExamWidget(
                date: DateTime.now(),
                examDescription:
                    'امتحان ریاضی از فصل 2 از ابتدای زندگی جانداران ایتدایی تا جفت گیری آنها جمله',
                isDone: false,
                teacherName: 'حمید جلیلی نسب',
              ),
            ],
          ),
        ),
      ),
    );
  }

  // ignore: unused_element
  _addExamDialogMethod() {
    //TODO implement show Add Teacher here
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
}
