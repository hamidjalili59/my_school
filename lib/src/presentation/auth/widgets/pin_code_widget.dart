import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_school/src/config/routes/router.dart';
import 'package:my_school/src/config/utils/function_helper.dart';
import 'package:my_school/src/injectable/injectable.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

// ignore: must_be_immutable
class PinCodeWidget extends StatelessWidget {
  PinCodeWidget({
    Key? key,
    required this.controller,
    this.errorController,
  }) : super(key: key);

  final TextEditingController controller;
  final StreamController<ErrorAnimationType>? errorController;
  final AppRouter appRoute = getIt.get<AppRouter>();
  String? currentText = '';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 16.0.h),
      child: PinCodeTextField(
        appContext: context,
        length: 4,
        obscureText: false,
        animationType: AnimationType.fade,
        pinTheme: PinTheme(
          activeColor: Colors.greenAccent.withAlpha(250),
          selectedFillColor: Colors.blueAccent.withAlpha(120),
          disabledColor: Colors.lightGreen.withAlpha(255),
          inactiveColor: const Color.fromARGB(255, 141, 108, 159),
          inactiveFillColor: Colors.black.withAlpha(0),
          shape: PinCodeFieldShape.underline,
          fieldHeight: 55,
          fieldWidth: 45.w,
          activeFillColor: Colors.white60,
        ),
        animationDuration: const Duration(milliseconds: 300),
        enableActiveFill: true,
        autoFocus: true,
        autoUnfocus: true,
        autoDismissKeyboard: true,
        keyboardType: TextInputType.number,
        errorAnimationController: errorController,
        autoDisposeControllers: true,
        controller: controller,
        onCompleted: (v) {
          if (v == '2222') {
            FunctionHelper().logMessage('ok');
          }
        },
        onChanged: (value) {
          currentText = value;
        },
        beforeTextPaste: (text) {
          //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
          //but you can show anything you want here, like your pop up saying wrong paste format or etc
          return true;
        },
      ),
    );
  }
}
