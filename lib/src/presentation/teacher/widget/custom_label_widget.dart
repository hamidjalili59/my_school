import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomLabelField extends StatelessWidget {
  const CustomLabelField({
    Key? key,
    required this.title,
    this.height,
    this.rightPadding,
    this.alignment,
  }) : super(key: key);
  final String title;
  final double? height;
  final double? rightPadding;
  final AlignmentGeometry? alignment;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: rightPadding ?? 16.0.w, bottom: 4.h),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8.w),
        alignment: alignment ?? Alignment.center,
        height: height ?? 0.05.sh,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
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
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 14.r,
                fontWeight: FontWeight.w800,
              ),
              textDirection: TextDirection.rtl,
            ),
          ),
        ),
      ),
    );
  }
}
