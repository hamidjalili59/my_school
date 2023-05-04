import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  final IconData icon;
  final double? width;
  final double? height;
  final int maxLength;
  final int maxLines;
  final int minLines;
  final void Function(String)? onSubmitted;
  final TextInputType keyboardType;
  final TextEditingController controller;
  const CustomTextField({
    Key? key,
    required this.icon,
    this.width,
    this.height,
    required this.maxLength,
    this.maxLines = 1,
    this.minLines = 1,
    required this.keyboardType,
    required this.controller,
    this.onSubmitted,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: width ?? 0.6.sw,
      height: height ?? 0.05.sh,
      decoration: BoxDecoration(
        color: const Color.fromARGB(100, 250, 239, 222),
        border: Border.all(
          color: const Color.fromARGB(255, 141, 108, 159),
          width: 3.r,
        ),
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: TextField(
        onSubmitted: onSubmitted,
        maxLines: maxLines,
        minLines: minLines,
        controller: controller,
        decoration: InputDecoration(
          icon: Icon(icon),
          iconColor: const Color.fromARGB(255, 141, 108, 159),
          border: InputBorder.none,
          counterText: '',
        ),
        keyboardType: keyboardType,
        maxLength: maxLength,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w800,
          fontSize: 16.r,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
