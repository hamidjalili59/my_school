import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_school/src/config/constants/general_constants.dart';
import 'package:my_school/src/config/routes/router.dart';

class ClassesCardWidget extends StatelessWidget {
  const ClassesCardWidget({
    Key? key,
    required this.title,
    required this.appRouter,
  }) : super(key: key);

  final String title;
  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.0.h),
      child: InkWell(
        onTap: () {
          GeneralConstants.appbarTitle = title;
          appRouter.pushNamed('/class_details_page');
        },
        child: SizedBox(
          width: 0.95.sw,
          child: Stack(
            children: [
              Container(
                alignment: Alignment.bottomLeft,
                constraints: BoxConstraints(
                  maxHeight: 0.1.sh,
                  minHeight: 0.05.sh,
                  maxWidth: 0.95.sw,
                  minWidth: 0.94.sw,
                ),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(8.r),
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.black12,
                      width: 1.5.w,
                      strokeAlign: StrokeAlign.inside,
                    ),
                    right: BorderSide(
                      color: Colors.black12,
                      width: 1.5.w,
                      strokeAlign: StrokeAlign.inside,
                    ),
                    left: BorderSide(
                      color: Colors.black12,
                      width: 1.5.w,
                      strokeAlign: StrokeAlign.inside,
                    ),
                    top: BorderSide(
                      color: Colors.black12,
                      width: 1.5.w,
                      strokeAlign: StrokeAlign.inside,
                    ),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 8.0.w, bottom: 4.w),
                  child: Text(title,
                      style: TextStyle(
                          fontSize: 20.r, fontWeight: FontWeight.w600),
                      textAlign: TextAlign.right,
                      textDirection: TextDirection.rtl),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 1.h),
                decoration: BoxDecoration(
                  // color: const Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(8.r),
                ),
                width: 0.95.sw,
                height: 0.1.sh,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.r),
                  child: Image.asset(
                    'assets/class_card_cover.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: EdgeInsets.only(top: 4.h, right: 12.w),
                  child: Text("کلاس",
                      style: TextStyle(
                          fontSize: 22.r,
                          color: Colors.white,
                          fontWeight: FontWeight.w800),
                      textAlign: TextAlign.right,
                      textDirection: TextDirection.rtl),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
