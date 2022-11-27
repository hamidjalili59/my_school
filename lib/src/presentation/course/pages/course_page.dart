import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_school/src/config/constants/general_constants.dart';
import 'package:my_school/src/config/routes/router.dart';
import 'package:my_school/src/injectable/injectable.dart';
import 'package:my_school/src/presentation/auth/widgets/textfield_custom.dart';
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
              size: 26.r,
            ),
            onPressed: _addCourseDialogMethod,
            label: Text(
              'افزودن‌درس',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.r,
                  fontWeight: FontWeight.w700),
            ),
            backgroundColor: GeneralConstants.mainColor),
        backgroundColor: GeneralConstants.backgroundColor,
        body: SizedBox(
          width: 1.sw,
          height: 1.sh,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
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
                      child: Text(
                        "درس دینی",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24.r,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }

  _addCourseDialogMethod() {
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
                height: 0.055.sh,
                child: CustomTextField(
                  keyboardType: TextInputType.text,
                  maxLength: 15,
                  icon: Icons.menu_book,
                  controller: _controller,
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
