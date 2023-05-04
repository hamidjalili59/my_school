import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TileButtonWidget extends StatelessWidget {
  const TileButtonWidget({
    Key? key,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  final String title;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 141, 108, 159),
              border: Border(
                bottom: BorderSide(color: Colors.black12, width: 3.w),
                right: BorderSide(color: Colors.black12, width: 3.w),
                left: BorderSide(color: Colors.black12, width: 3.w),
                top: BorderSide(color: Colors.black12, width: 3.w),
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(22.r),
              ),
              boxShadow: const [
                BoxShadow(
                    color: Colors.black45,
                    blurRadius: 5,
                    spreadRadius: 0.01,
                    offset: Offset(1, 1))
              ]),
          child: SizedBox(
            width: 0.4.sw,
            height: 0.5.sw,
            child: Center(
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.r,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          )),
    );
  }
}
