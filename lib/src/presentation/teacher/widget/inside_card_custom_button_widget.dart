import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_school/src/config/constants/general_constants.dart';

class InsideCardCustomButtonWidget extends StatelessWidget {
  const InsideCardCustomButtonWidget({
    Key? key,
    required this.title,
    required this.onTap,
  }) : super(key: key);
  final String title;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: GeneralConstants.mainColor,
            borderRadius: BorderRadius.circular(5.r),
            border: Border(
              bottom: BorderSide(color: Colors.black26, width: 2.w),
              right: BorderSide(color: Colors.black26, width: 2.w),
              left: BorderSide(color: Colors.black26, width: 2.w),
              top: BorderSide(color: Colors.black26, width: 2.w),
            ),
            boxShadow: const [
              BoxShadow(
                color: Colors.black38,
                blurRadius: 3,
                offset: Offset(
                  1.5,
                  2.5,
                ),
              ),
            ]),
        width: 0.4.sw,
        height: 0.13.sw,
        alignment: Alignment.center,
        child: Text(title,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white,
                fontSize: 16.r,
                fontWeight: FontWeight.w900)),
      ),
    );
  }
}
