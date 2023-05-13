import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart' as formtext;
import 'package:my_school/src/config/constants/general_constants.dart';

class CustomTextField extends StatelessWidget {
  final double width;
  final double heghit;
  final String name;
  final String initialValue;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final void Function(String?)? onChange;
  final String? Function(String?)? validator;
  final String? labelText;
  final IconData? sIcon;
  final bool? haveIcon;
  final void Function(String?)? onSubmitted;
  const CustomTextField({
    super.key,
    required this.width,
    required this.name,
    required this.heghit,
    required this.initialValue,
    required this.controller,
    this.validator,
    this.onChange,
    this.labelText,
    this.onSubmitted,
    required this.keyboardType,
    this.sIcon,
    this.haveIcon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: heghit,
      child: formtext.FormBuilderTextField(
        keyboardType: keyboardType,
        textDirection: TextDirection.rtl,
        decoration: haveIcon ?? false
            ? InputDecoration(
                floatingLabelAlignment: FloatingLabelAlignment.center,
                alignLabelWithHint: true,
                suffixIcon: Icon(sIcon),
                hintTextDirection: TextDirection.rtl,
                hintText: labelText,
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: GeneralConstants.mainColor,
                  ),
                ),
              )
            : InputDecoration(
                floatingLabelAlignment: FloatingLabelAlignment.center,
                alignLabelWithHint: true,
                hintTextDirection: TextDirection.rtl,
                hintText: labelText,
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: GeneralConstants.mainColor,
                  ),
                ),
              ),
        onSubmitted: onSubmitted,
        textAlignVertical: TextAlignVertical.center,
        controller: controller,
        name: name,
        textAlign: TextAlign.center,
        validator: validator,
        onChanged: onChange,
      ),
    );
  }
}
