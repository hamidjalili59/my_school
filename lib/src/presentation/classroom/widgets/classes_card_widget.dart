import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
                    child: Text(title,
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
            ],
          ),
        ),
      ),
    );
  }
}
