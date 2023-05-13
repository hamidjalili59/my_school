import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import 'package:my_school/src/config/constants/general_constants.dart';
import 'package:my_school/src/config/constants/png_assets.dart';
import 'package:my_school/src/presentation/auth/bloc/auth_bloc.dart';
import 'package:my_school/src/presentation/core/widgets/custom_textfield_widget.dart';

class UserAuthenticationPage extends StatelessWidget {
  UserAuthenticationPage({
    Key? key,
    required this.bloc,
  }) : super(key: key);
  final AuthBloc bloc;
  final TextEditingController phoneController = TextEditingController(text: '');
  final GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();

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
                  SizedBox(height: 20.h),
                  FormBuilder(
                    key: _formKey,
                    child: CustomTextField(
                      name: 'phone',
                      labelText: 'شماره تلفن',
                      validator: FormBuilderValidators.compose([
                        FormBuilderValidators.required(
                            errorText: 'شماره تلفن برای ورود اجباری است'),
                        FormBuilderValidators.numeric(
                            errorText: 'شماره تلفن باید عدد باشد'),
                        FormBuilderValidators.equalLength(
                          11,
                          errorText:
                              'شماره تلفن درست نیست ، شماره باید 11 رقم باشد و با صفر شروع شود',
                        ),
                      ]),
                      onSubmitted: (value) {
                        if (_formKey.currentState?.validate() ?? false) {
                          bloc.add(
                            AuthEvent.otpHandshake(
                              double.parse(value!),
                            ),
                          );
                          phoneController.clear();
                        } else {}
                      },
                      controller: phoneController,
                      keyboardType: TextInputType.phone,
                      initialValue: '',
                      width: 200.w,
                      heghit: 65.h,
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
                        if (_formKey.currentState?.validate() ?? false) {
                          bloc.add(
                            AuthEvent.otpHandshake(
                              double.parse(phoneController.text),
                            ),
                          );
                          phoneController.clear();
                        } else {}
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
