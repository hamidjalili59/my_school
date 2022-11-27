
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_school/src/config/constants/png_assets.dart';

class CustomAvatarWidget extends StatelessWidget {
  const CustomAvatarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 0.21.sw,
      child: Container(
        height: 75.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          border: Border(
            bottom: BorderSide(
                color: Colors.black12,
                width: 1.5.w,
                strokeAlign: StrokeAlign.inside),
            right: BorderSide(
                color: Colors.black12,
                width: 1.5.w,
                strokeAlign: StrokeAlign.inside),
            left: BorderSide(
                color: Colors.black12,
                width: 1.5.w,
                strokeAlign: StrokeAlign.inside),
            top: BorderSide(
                color: Colors.black12,
                width: 1.5.w,
                strokeAlign: StrokeAlign.inside),
          ),
        ),
        // child: Icon(Icons.person, size: 56.r),
        child: Image.asset(PngAssets.teacherProfile),
      ),
    );
  }
}
