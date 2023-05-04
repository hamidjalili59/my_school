import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_school/src/config/constants/general_constants.dart';
import 'package:ndialog/ndialog.dart';

import 'package:my_school/src/config/routes/router.dart';
import 'package:my_school/src/injectable/injectable.dart';
import 'package:my_school/src/presentation/teacher/widget/custom_avatar_widget.dart';
import 'package:my_school/src/presentation/teacher/widget/custom_label_widget.dart';
import 'package:my_school/src/presentation/teacher/widget/inside_card_custom_button_widget.dart';

class CustomCardTeacherWidget extends StatelessWidget {
  const CustomCardTeacherWidget({
    Key? key,
    required this.name,
    required this.phone,
    required this.phoneController,
    required this.nameController,
    required this.method,
  }) : super(key: key);
  final String name;
  final String phone;
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
                          CustomLabelField(title: name),
                          CustomLabelField(title: phone),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
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
                          nameController.text = name;
                          phoneController.text = phone;
                          method();
                        },
                      ),
                      SizedBox(width: 5.w),
                      InsideCardCustomButtonWidget(
                        title: "کلاس‌ها",
                        onTap: _showTeacherClassesMethod,
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
    //TODO implement show classes here
    var appRputer = getIt.get<AppRouter>();
    NDialog(
      dialogStyle: DialogStyle(
          titlePadding: EdgeInsets.symmetric(horizontal: 0.r, vertical: 0.r),
          backgroundColor: GeneralConstants.mainColor,
          contentPadding: EdgeInsets.symmetric(horizontal: 8.r, vertical: 3.r)),
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
              children: const [
                ShowTeacherClassWidget(),
                ShowTeacherClassWidget(),
                ShowTeacherClassWidget(),
              ],
            ),
          )),
    ).show(appRputer.navigatorKey.currentContext!);
  }
}

class ShowTeacherClassWidget extends StatelessWidget {
  const ShowTeacherClassWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Padding(
        padding: EdgeInsets.only(bottom: 4.0.h),
        child: Container(
          decoration: BoxDecoration(
              color: GeneralConstants.backgroundColor,
              borderRadius: BorderRadius.circular(5.r)),
          alignment: Alignment.center,
          width: double.infinity,
          height: 50.h,
          child: Text(
            'کلاس 202',
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
