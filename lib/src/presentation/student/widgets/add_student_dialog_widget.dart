import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:my_school/src/config/constants/general_constants.dart';
import 'package:my_school/src/config/routes/router.dart';
import 'package:my_school/src/features/classroom/domain/models/classroom_model.dart';
import 'package:my_school/src/features/core/models/basic_info_model.dart';
import 'package:my_school/src/features/student/domain/models/student_model/student.dart';
import 'package:my_school/src/injectable/injectable.dart';
import 'package:my_school/src/presentation/core/widgets/custom_textfield_widget.dart';
import 'package:my_school/src/presentation/student/bloc/student/student_bloc.dart';

class AddStudentDialogWidget extends StatelessWidget {
  const AddStudentDialogWidget({
    super.key,
    required this.formKey,
    required TextEditingController studentNameController,
    required TextEditingController studentParentController,
    required TextEditingController phonenumberController,
  })  : _studentNameController = studentNameController,
        _studentParentController = studentParentController,
        _phonenumberController = phonenumberController;

  final GlobalKey<FormBuilderState> formKey;
  final TextEditingController _studentNameController;
  final TextEditingController _studentParentController;
  final TextEditingController _phonenumberController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 0.75.sw,
      height: 0.68.sh,
      child: FormBuilder(
        key: formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: 0.45.sw,
                height: 0.6.sw,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black38,
                      blurRadius: 3,
                      spreadRadius: 1,
                      offset: Offset(1, 3),
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.all(34.0.r),
                  child: Icon(Icons.person_rounded,
                      size: 46.r, color: Colors.black87),
                ),
              ),
              CustomTextField(
                haveIcon: true,
                sIcon: Icons.person_rounded,
                name: 'student_name',
                labelText: 'اسم دانش آموز',
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(
                      errorText: 'انتخاب اسم برای ساخت دانش آموز اجباری است'),
                  FormBuilderValidators.maxLength(
                    30,
                    errorText:
                        'لطفا اسمی که انتخاب میکنید کمتر از 30 حرف داشته باشد',
                  ),
                  FormBuilderValidators.minLength(
                    3,
                    errorText:
                        'لطفا اسمی که انتخاب میکنید بیشتر از 3 حرف داشته باشد',
                  ),
                ]),
                controller: _studentNameController,
                initialValue: '',
                width: 200.w,
                heghit: 65.h,
                keyboardType: TextInputType.name,
              ),
              SizedBox(height: 5.h),
              CustomTextField(
                haveIcon: true,
                sIcon: Icons.family_restroom_rounded,
                name: 'parent_name',
                labelText: 'اسم والد',
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(
                      errorText:
                          'انتخاب اسم والد برای ساخت دانش آموز اجباری است'),
                  FormBuilderValidators.maxLength(
                    30,
                    errorText:
                        'لطفا اسمی که انتخاب میکنید کمتر از 30 حرف داشته باشد',
                  ),
                  FormBuilderValidators.minLength(
                    3,
                    errorText:
                        'لطفا اسمی که انتخاب میکنید بیشتر از 3 حرف داشته باشد',
                  ),
                ]),
                controller: _studentParentController,
                initialValue: '',
                width: 200.w,
                heghit: 65.h,
                keyboardType: TextInputType.name,
              ),
              SizedBox(height: 5.h),
              CustomTextField(
                haveIcon: true,
                sIcon: Icons.phone_rounded,
                name: 'phone',
                labelText: 'شماره تماس',
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(
                      errorText: 'انتخاب شماره برای ساخت دانش آموز اجباری است'),
                  FormBuilderValidators.numeric(
                      errorText: 'شماره تلفن باید عدد باشد'),
                  FormBuilderValidators.equalLength(11,
                      errorText:
                          'شماره تلفن درست نیست ، شماره باید 11 رقم باشد و با صفر شروع شود'),
                ]),
                controller: _phonenumberController,
                initialValue: '',
                width: 200.w,
                heghit: 65.h,
                keyboardType: TextInputType.phone,
              ),
              SizedBox(height: 10.h),
              BlocBuilder<StudentBloc, StudentState>(
                  bloc: getIt.get<StudentBloc>(),
                  builder: (context, studentStateBotton) {
                    return IgnorePointer(
                      ignoring: studentStateBotton.isLoading,
                      child: MaterialButton(
                        onPressed: () {
                          if (!studentStateBotton.isLoading) {
                            if (formKey.currentState?.validate() ?? false) {
                              getIt.get<StudentBloc>().add(
                                    StudentEvent.addStudent(
                                      Student(
                                          basicInfo: BasicInfoModel(
                                            name: _studentNameController.text,
                                            phoneNumber: double.tryParse(
                                                    _phonenumberController
                                                        .text) ??
                                                0,
                                          ),
                                          classId:
                                              getIt.get<Classroom>().classID),
                                      _studentParentController.text,
                                    ),
                                  );
                              _studentNameController.clear();
                              _phonenumberController.clear();
                              _studentParentController.clear();

                              Navigator.pop(getIt
                                  .get<AppRouter>()
                                  .navigatorKey
                                  .currentContext!);
                            } else {}
                          }
                        },
                        color: GeneralConstants.mainColor,
                        elevation: 5,
                        height: 55.h,
                        minWidth: 0.65.sw,
                        child: studentStateBotton.isLoading
                            ? const CircularProgressIndicator()
                            : Text(
                                'ثبت دانش‌آموز',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.r,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                      ),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
