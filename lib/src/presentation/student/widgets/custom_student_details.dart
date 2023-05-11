import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_school/src/config/constants/general_constants.dart';
import 'package:my_school/src/config/routes/router.dart';
import 'package:my_school/src/features/auth/domain/models/auth_types.dart';
import 'package:my_school/src/features/classroom/domain/models/classroom_get_response.dart';
import 'package:my_school/src/features/classroom/domain/models/classroom_model.dart';
import 'package:my_school/src/features/student/domain/models/student_model/student.dart';
import 'package:my_school/src/injectable/injectable.dart';
import 'package:my_school/src/presentation/classroom/bloc/classroom_bloc.dart';

class CustomClassDetailButtonWidget extends StatefulWidget {
  const CustomClassDetailButtonWidget({
    Key? key,
    required this.icon,
    required this.student,
  }) : super(key: key);
  final IconData icon;
  final Student student;

  @override
  State<CustomClassDetailButtonWidget> createState() =>
      _CustomClassDetailButtonWidgetState();
}

class _CustomClassDetailButtonWidgetState
    extends State<CustomClassDetailButtonWidget> {
  @override
  void initState() {
    super.initState();
    getIt.get<ClassroomBloc>().add(const ClassroomEvent.getClasses());
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _studentTileDialogMethod(widget.student);
      },
      child: Container(
        width: 0.4.sw,
        height: 0.28.sh,
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
                color: Colors.black26, offset: Offset(1, 3), blurRadius: 4),
          ],
          color: Colors.white,
          border: Border(
            bottom: BorderSide(
              color: Colors.black12,
              width: 1.5.w,
            ),
            right: BorderSide(
              color: Colors.black12,
              width: 1.5.w,
            ),
            left: BorderSide(
              color: Colors.black12,
              width: 1.5.w,
            ),
            top: BorderSide(
              color: Colors.black12,
              width: 1.5.w,
            ),
          ),
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 8,
              child: Padding(
                padding: EdgeInsets.only(top: 32.0.h),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50.r),
                  child: SvgPicture.asset('assets/profile.svg'),
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  widget.student.basicInfo!.name,
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 16.r,
                    fontWeight: FontWeight.w800,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _studentTileDialogMethod(Student student) {
    if (getIt.isRegistered<Student>()) {
      getIt.unregister<Student>();
      getIt.registerSingleton<Student>(student);
    } else {
      getIt.registerSingleton<Student>(student);
    }
    if (GeneralConstants.userType == UserType.parent) {
      if (getIt.isRegistered<Classroom>()) {
        getIt.unregister<Classroom>();
        getIt.registerSingleton<Classroom>(getIt
            .get<ClassroomGetResponse>()
            .classrooms
            .firstWhere((element) => element.classID == student.classId));
      } else {
        getIt.registerSingleton<Classroom>(getIt
            .get<ClassroomGetResponse>()
            .classrooms
            .firstWhere((element) => element.classID == student.classId));
      }
    }
    getIt.get<AppRouter>().pushNamed('/student_details_page');
  }
}
