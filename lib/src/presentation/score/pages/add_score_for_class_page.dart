import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_school/src/config/constants/png_assets.dart';
import 'package:my_school/src/config/routes/router.dart';
import 'package:my_school/src/injectable/injectable.dart';
import 'package:my_school/src/presentation/score/bloc/score_board/score_board_bloc.dart';

class AddScoreForClassPage extends StatelessWidget {
  const AddScoreForClassPage({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Stack(
            children: [
              Positioned.fill(
                child: Padding(
                  padding: EdgeInsets.only(top: 70.0.h),
                  child: SizedBox(
                    width: 1.sw,
                    height: 0.9.sh,
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: BlocBuilder<ScoreBoardBloc, ScoreBoardState>(
                        bloc: getIt.get<ScoreBoardBloc>(),
                        builder: (context, scoreBoardState) {
                          return SingleChildScrollView(
                            child: DataTable(
                              headingRowHeight: 70.h,
                              headingTextStyle: TextStyle(
                                  fontSize: 10.r, color: Colors.black),
                              dataRowHeight: 50.h,
                              border: TableBorder.all(
                                  color: Colors.black54,
                                  borderRadius: BorderRadius.circular(8.r),
                                  width: 1.w),
                              horizontalMargin: 0,
                              checkboxHorizontalMargin: 0,
                              columns: <DataColumn>[
                                DataColumn(
                                  onSort: (index, isfelan) {},
                                  label: Flexible(
                                    flex: 4,
                                    child: Center(
                                      child: Text(
                                        'نام و نام‌خانوادگی',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          fontSize: 16.r,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                DataColumn(
                                  onSort: (index, isfelan) {},
                                  label: Flexible(
                                    flex: 1,
                                    child: Center(
                                      child: Text('نمره',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontWeight: FontWeight.w900,
                                              fontSize: 16.r)),
                                    ),
                                  ),
                                ),
                              ],
                              rows: List.generate(
                                scoreBoardState.students.length,
                                (index) => DataRow(cells: [
                                  DataCell(
                                    SizedBox(
                                      width: 0.64.sw,
                                      child: Center(
                                        child: Text(
                                            scoreBoardState.students[index]
                                                .basicInfo!.name,
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 16.r)),
                                      ),
                                    ),
                                  ),
                                  DataCell(
                                    SizedBox(
                                      width: 0.35.sw,
                                      child: TextFormField(
                                        controller: TextEditingController(),
                                        expands: true,
                                        maxLength: 4,
                                        keyboardType: TextInputType.number,
                                        decoration: const InputDecoration(
                                            border: OutlineInputBorder(),
                                            contentPadding: EdgeInsets.zero,
                                            counterText: '',
                                            counterStyle:
                                                TextStyle(fontSize: 0)),
                                        textAlign: TextAlign.center,
                                        maxLines: null,
                                        minLines: null,
                                      ),
                                    ),
                                  )
                                ]),
                              ),
                              columnSpacing: 0,
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ),
              Positioned.fill(
                  child: Align(
                alignment: Alignment.topCenter,
                child: Container(
                  width: 0.95.sw,
                  height: 70.h,
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
                  child: Row(
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
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.w),
                        child: Text(
                          // 'جمعه 20/9/1401 ساعت 9:28\nمدرسه شهید نظری',
                          'ثبت نمرات',
                          style: TextStyle(
                              fontSize: 22.r,
                              color: Colors.white,
                              fontWeight: FontWeight.w900),
                          textAlign: TextAlign.center,
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          // getIt.get<ScoreBoardBloc>().add(ScoreBoardEvent.acceptScores(scores));
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
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
