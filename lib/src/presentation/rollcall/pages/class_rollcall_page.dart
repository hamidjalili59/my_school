import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_school/src/config/constants/png_assets.dart';
import 'package:my_school/src/config/routes/router.dart';
import 'package:my_school/src/features/teacher/domain/models/teacher_get_schools.dart';
import 'package:my_school/src/injectable/injectable.dart';
import 'package:my_school/src/presentation/rollcall/bloc/rollcall_class/class_rollcall/class_rollcall_bloc.dart';

// ignore: must_be_immutable
class ClassRollCallPage extends StatelessWidget {
  ClassRollCallPage({super.key});
  bool hamidbool = false;
  int currentindex = 0;
  final ClassRollcallBloc bloc = getIt.get<ClassRollcallBloc>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider(
        create: (_) => bloc,
        child: Scaffold(
          body: BlocBuilder<ClassRollcallBloc, ClassRollcallState>(
            bloc: bloc,
            builder: (context, state) {
              if (state.isLoading) {
                return const Center(child: CircularProgressIndicator());
              }
              return Stack(
                children: [
                  Positioned.fill(
                    child: PageView.builder(
                        onPageChanged: (value) {
                          currentindex = value;
                        },
                        itemCount: state.students.length,
                        itemBuilder: ((context, index) {
                          return Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.blueAccent.withOpacity(0.4),
                                  Colors.white,
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 14.0.h),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.black54,
                                        borderRadius:
                                            BorderRadius.circular(26.r)),
                                    width: 0.55.sw,
                                    height: 0.35.sh,
                                    child: Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(26.r),
                                        child: Container(
                                          color: const Color.fromARGB(
                                              255, 255, 255, 255),
                                          child: SvgPicture.asset(
                                              'assets/profile.svg'),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20.h),
                                Text(
                                  state.students[index].basicInfo!.name,
                                  style: TextStyle(
                                      fontSize: 26.r,
                                      color: Colors.black87,
                                      fontWeight: FontWeight.w700),
                                ),
                                SizedBox(height: 20.h),
                                Material(
                                  type: MaterialType.card,
                                  color: state.rollcalls[index].absent
                                      ? Colors.grey
                                      : Colors.greenAccent,
                                  borderRadius:
                                      const BorderRadiusDirectional.all(
                                    Radius.elliptical(30, 15),
                                  ),
                                  child: InkWell(
                                    splashColor: !state.rollcalls[index].absent
                                        ? Colors.grey
                                        : Colors.greenAccent,
                                    borderRadius: const BorderRadius.all(
                                      Radius.elliptical(30, 15),
                                    ),
                                    onTap: () {
                                      bloc.add(
                                        ClassRollcallEvent.setRollcalls(index),
                                      );
                                    },
                                    child: SizedBox(
                                      height: 45.h,
                                      width: 120.w,
                                      child: Center(
                                        child: Text(
                                          'حاضر',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 22.r,
                                              fontWeight: FontWeight.w900),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        })),
                  ),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        width: 0.95.sw,
                        height: 130.h,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(221, 17, 11, 46),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(
                              16.r,
                            ),
                            bottomRight: Radius.circular(
                              16.r,
                            ),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                  onTap: () {
                                    getIt.get<AppRouter>().pop();
                                  },
                                  child: SizedBox(
                                    width: 60.w,
                                    height: 60.w,
                                    child: Icon(
                                      Icons.arrow_back_ios_new,
                                      color: Colors.white,
                                      size: 26.r,
                                    ),
                                  ),
                                ),
                                Column(
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 8.w),
                                      child: Text(
                                        getIt
                                            .get<TeacherGetSchools>()
                                            .schoolName,
                                        style: TextStyle(
                                            fontSize: 16.sp,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.white70, width: 3),
                                        borderRadius:
                                            BorderRadius.circular(16.r),
                                      ),
                                      width: 120,
                                      height: 40,
                                      child: Text(
                                        '${currentindex + 1} / ${state.students.length}',
                                        style: TextStyle(
                                          fontSize: 16.r,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                InkWell(
                                  onTap: () {
                                    if (state.isLoading) {
                                      return;
                                    }
                                    bloc.add(
                                      const ClassRollcallEvent
                                          .submitRollcalls(),
                                    );
                                  },
                                  child: SizedBox(
                                    width: 60.w,
                                    height: 40.w,
                                    child: Image.asset(
                                      PngAssets.checkIcon,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
