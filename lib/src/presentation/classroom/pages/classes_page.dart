import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_school/src/config/constants/general_constants.dart';
import 'package:my_school/src/features/auth/domain/models/auth_types.dart';
import 'package:my_school/src/presentation/classroom/bloc/classroom_bloc.dart';
import 'package:ndialog/ndialog.dart';

import 'package:my_school/src/config/routes/router.dart';
import 'package:my_school/src/injectable/injectable.dart';
import 'package:my_school/src/presentation/auth/widgets/textfield_custom.dart';
import 'package:my_school/src/presentation/classroom/widgets/classes_card_widget.dart';

class ClassesPage extends StatelessWidget {
  ClassesPage({
    Key? key,
    required this.appRouter,
  }) : super(key: key);
  final TextEditingController _controller = TextEditingController(text: '');
  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: GeneralConstants.userType == UserType.admin
            ? FloatingActionButton.extended(
                icon: Icon(
                  Icons.add_circle,
                  color: Colors.white,
                  size: 26.r,
                ),
                onPressed: _addClassDialogMethod,
                label: Text(
                  'افزودن‌کلاس',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.r,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                backgroundColor: GeneralConstants.mainColor,
              )
            : null,
        backgroundColor: GeneralConstants.backgroundColor,
        body: BlocBuilder<ClassroomBloc, ClassroomState>(
          bloc: getIt.get<ClassroomBloc>(),
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () {
                return Center(
                  child: SizedBox(
                    width: 60.w,
                    height: 60.w,
                    child: const CircularProgressIndicator(),
                  ),
                );
              },
              idle: (isLoading, classes, teacherClasses, currentClass) {
                return Padding(
                  padding: EdgeInsets.only(top: 8.0.h),
                  child: isLoading
                      ? Center(
                          child: SizedBox(
                              width: 60.w,
                              height: 60.w,
                              child: const CircularProgressIndicator()),
                        )
                      : SizedBox(
                          width: 1.sw,
                          child: ListView.builder(
                            itemCount: classes.length,
                            itemBuilder: (context, index) => ClassesCardWidget(
                              classroom: classes[index],
                              appRouter: appRouter,
                            ),
                          ),
                        ),
                );
              },
            );
          },
        ),
      ),
    );
  }

  _addClassDialogMethod() {
    var appRputer = getIt.get<AppRouter>();
    NDialog(
      dialogStyle: DialogStyle(
          titlePadding: EdgeInsets.symmetric(horizontal: 0.r, vertical: 0.r),
          backgroundColor: GeneralConstants.backgroundColor,
          contentPadding: EdgeInsets.symmetric(horizontal: 8.r, vertical: 3.r)),
      title: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
          color: GeneralConstants.mainColor,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(12.r),
              bottomRight: Radius.circular(12.r)),
        ),
        height: 50.h,
        child: Text(
          'افزودن کلاس',
          style: TextStyle(
              color: Colors.white, fontSize: 16.r, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ),
      content: BlocBuilder<ClassroomBloc, ClassroomState>(
          bloc: getIt.get<ClassroomBloc>(),
          builder: (context, classState) {
            return ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: 0.1.sh,
                minWidth: 0.75.sw,
                maxHeight: 0.8.sh,
                maxWidth: 0.8.sw,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 15.h),
                  SizedBox(
                    width: 0.6.sw,
                    height: 55.h,
                    child: CustomTextField(
                      icon: Icons.meeting_room_outlined,
                      keyboardType: TextInputType.text,
                      maxLength: 15,
                      controller: _controller,
                    ),
                  ),
                  SizedBox(height: 15.h),
                  classState.maybeWhen<Widget>(
                    idle: (isLoading, classes, teacherClasses, currentClass) {
                      return IgnorePointer(
                        ignoring: isLoading,
                        child: InkWell(
                          onTap: () {
                            getIt.get<ClassroomBloc>().add(
                                ClassroomEvent.createClasses(_controller.text));
                            Navigator.pop(getIt
                                .get<AppRouter>()
                                .navigatorKey
                                .currentContext!);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: GeneralConstants.mainColor,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8.r),
                                topRight: Radius.circular(8.r),
                                bottomRight: Radius.circular(8.r),
                                bottomLeft: Radius.circular(8.r),
                              ),
                            ),
                            width: 0.45.sw,
                            height: 40.h,
                            alignment: Alignment.center,
                            child: isLoading
                                ? const CircularProgressIndicator()
                                : Text(
                                    'تایید',
                                    style: TextStyle(
                                        fontSize: 16.r,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white),
                                    textAlign: TextAlign.center,
                                  ),
                          ),
                        ),
                      );
                    },
                    orElse: () {
                      return const SizedBox();
                    },
                  ),
                  SizedBox(height: 10.h),
                ],
              ),
            );
          }),
    ).show(appRputer.navigatorKey.currentContext!);
  }
}
