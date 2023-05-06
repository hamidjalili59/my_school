import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomClassDetailButtonWidget extends StatelessWidget {
  const CustomClassDetailButtonWidget({
    Key? key,
    required this.titleIcon,
    required this.title,
  }) : super(key: key);
  final IconData titleIcon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 0.4.sw,
      height: 0.28.sh,
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(color: Colors.black26, offset: Offset(1, 3), blurRadius: 4),
        ],
        color: Colors.white,
        border: Border(
          bottom: BorderSide(
            color: Colors.black12,
            width: 1.5.w,
          ),
          right: BorderSide(
            color: Colors.black12,
            width: 1.5.w,
          ),
          left: BorderSide(
            color: Colors.black12,
            width: 1.5.w,
          ),
          top: BorderSide(
            color: Colors.black12,
            width: 1.5.w,
          ),
        ),
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 8,
            child: Padding(
              padding: EdgeInsets.only(top: 14.0.h),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50.r),
                child: Image.asset('assets/per.jpg'),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Align(
              alignment: Alignment.center,
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 16.r,
                  fontWeight: FontWeight.w800,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
