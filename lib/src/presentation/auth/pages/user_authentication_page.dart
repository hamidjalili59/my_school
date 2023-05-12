import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:my_school/src/config/constants/general_constants.dart';
import 'package:my_school/src/config/constants/png_assets.dart';
import 'package:my_school/src/presentation/auth/bloc/auth_bloc.dart';
import 'package:my_school/src/presentation/auth/widgets/textfield_custom.dart';

class UserAuthenticationPage extends StatelessWidget {
  UserAuthenticationPage({
    Key? key,
    required this.bloc,
  }) : super(key: key);
  final AuthBloc bloc;
  final TextEditingController phoneController = TextEditingController(text: '');

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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 0.85.sw,
                    height: 0.85.sw,
                    child: Image.asset(PngAssets.schoolAppIcon),
                  ),
                  SizedBox(height: 40.h),
                  SizedBox(
                    child: Text(
                      'لطفا شماره خود را وارد نمایید',
                      style: TextStyle(
                          fontSize: 18.r, fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(
                    height: 50.h,
                    child: CustomTextField(
                      keyboardType: TextInputType.text,
                      onSubmitted: (value) {
                        bloc.add(
                          AuthEvent.otpHandshake(
                            double.parse(value),
                          ),
                        );
                      },
                      maxLength: 15,
                      icon: Icons.phone_android,
                      controller: phoneController,
                    ),
                  ),
                  SizedBox(height: 50.h),
                  Material(
                    color: GeneralConstants.backgroundColor,
                    borderRadius: BorderRadius.circular(8.r),
                    child: InkWell(
                      splashColor: const Color.fromARGB(255, 141, 108, 159),
                      borderRadius: BorderRadius.circular(8.r),
                      onTap: () {
                        bloc.add(
                          AuthEvent.otpHandshake(
                            double.parse(phoneController.text),
                          ),
                        );
                      },
                      child: Container(
                        width: 0.45.sw,
                        height: 0.06.sh,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                        child: Text(
                          'تایید',
                          style: TextStyle(
                              color: Colors.black38,
                              fontSize: 16.r,
                              fontWeight: FontWeight.w900),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )),
          ),
        ],
      ),
    );
  }
}
