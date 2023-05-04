import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_school/src/config/constants/png_assets.dart';
import 'package:my_school/src/config/utils/function_helper.dart';
import 'package:my_school/src/presentation/auth/widgets/pin_code_widget.dart';

class VerificationCodePage extends StatelessWidget {
  VerificationCodePage({super.key});
  final TextEditingController pinCodeController =
      TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Positioned.fill(
            child: Scaffold(
              body: SizedBox(
                width: 1.sw,
                height: 1.sh,
                child: Column(
                  children: [
                    Container(
                      height: 0.1.sh,
                      alignment: Alignment.topLeft,
                      child: InkWell(
                        onTap: () {
                          FunctionHelper().logMessage('back Button clicked');
                        },
                        child: SizedBox(
                          width: 0.2.sw,
                          height: 0.2.sw,
                          child: Icon(
                            Icons.arrow_back_ios_new,
                            color: Colors.black87,
                            size: 26.r,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 0.55.sw,
                      height: 0.55.sw,
                      child: Image.asset(PngAssets.schoolIcon),
                    ),
                    SizedBox(height: 0.1.sh),
                    SizedBox(
                      child: Text(
                        'کد تایید را وارد نمایید',
                        style: TextStyle(
                            fontSize: 18.r, fontWeight: FontWeight.w600),
                      ),
                    ),
                    SizedBox(
                      width: 0.65.sw,
                      child: PinCodeWidget(controller: pinCodeController),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
