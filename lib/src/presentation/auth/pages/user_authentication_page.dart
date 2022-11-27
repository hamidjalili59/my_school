import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_school/src/config/constants/general_constants.dart';
import 'package:my_school/src/config/constants/png_assets.dart';
import 'package:my_school/src/presentation/auth/widgets/textfield_custom.dart';

class UserAuthenticationPage extends StatelessWidget {
  UserAuthenticationPage({super.key});
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
                children: [
                  SizedBox(height: 0.1.sh),
                  SizedBox(
                    width: 0.85.sw,
                    height: 0.85.sw,
                    child: Image.asset(PngAssets.schoolAppIcon),
                  ),
                  SizedBox(height: 0.1.sh),
                  SizedBox(
                    child: Text(
                      'لطفا شماره خود را وارد نمایید',
                      style: TextStyle(
                          fontSize: 18.r, fontWeight: FontWeight.w600),
                    ),
                  ),
                  CustomTextField(
                    keyboardType: TextInputType.text,
                    maxLength: 15,
                    icon: Icons.phone_android,
                    controller: phoneController,
                  ),
                  SizedBox(height: 0.08.sh),
                  Material(
                            color: GeneralConstants.backgroundColor,
                            borderRadius: BorderRadius.circular(8.r),
                            child: InkWell(
                              splashColor:
                                  const Color.fromARGB(255, 141, 108, 159),
                              borderRadius: BorderRadius.circular(8.r),
                              onTap: () {
                                // loginBloc.add(
                                //     const AuthEvent.otpHandshake(09361360584));
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
