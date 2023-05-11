import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_school/src/config/constants/general_constants.dart';
import 'package:my_school/src/features/student/domain/models/student_model/student.dart';
import 'package:my_school/src/injectable/injectable.dart';
import 'package:my_school/src/presentation/score/bloc/score/score_bloc.dart';
import 'package:persian_datetimepickers/persian_datetimepickers.dart';

class SingleScoreViewPage extends StatefulWidget {
  const SingleScoreViewPage({super.key});

  @override
  State<SingleScoreViewPage> createState() => _SingleScoreViewPageState();
}

class _SingleScoreViewPageState extends State<SingleScoreViewPage> {
  ScrollController? _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController();
    getIt
        .get<ScoreBloc>()
        .add(ScoreEvent.getScores(getIt.get<Student>().studentId));
    super.initState();
  }

  @override
  void dispose() {
    _scrollController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocBuilder<ScoreBloc, ScoreState>(
          bloc: getIt.get<ScoreBloc>(),
          builder: (context, scoreState) {
            if (scoreState.isLoading) {
              return Center(
                child: SizedBox(
                    width: 55.w,
                    height: 55.w,
                    child: const CircularProgressIndicator()),
              );
            } else {
              if (scoreState.scores.isNotEmpty) {
                return SizedBox(
                  width: 1.sw,
                  height: 1.sh,
                  child: CustomScrollView(
                    controller: _scrollController,
                    slivers: List.generate(
                        (scoreState.scores
                                .map((e) => e.courseName)
                                .toSet()
                                .toList()
                                .length *
                            2), (index) {
                      if (index % 2 == 0) {
                        return SliverAppBar(
                          centerTitle: true,
                          title: SizedBox(
                            width: 1.sw,
                            height: 80.h,
                            child: Stack(
                              children: [
                                Center(
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: GeneralConstants.mainColor,
                                        borderRadius:
                                            BorderRadius.circular(22.r),
                                        boxShadow: [
                                          BoxShadow(
                                            color: GeneralConstants.mainColor
                                                .withOpacity(0.8),
                                            blurRadius: 10,
                                            spreadRadius: 0.5,
                                          )
                                        ]),
                                    width: 0.8.sw,
                                    height: 45.h,
                                    child: InkWell(
                                      onTap: () {
                                        _scrollController!.animateTo(0,
                                            duration: const Duration(
                                                milliseconds: 350),
                                            curve: Curves.linear);
                                      },
                                      child: Center(
                                        child: Text(
                                          scoreState.scores
                                              .map((e) => e.courseName)
                                              .toList()[(index + 1) ~/ 2],
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 22.r,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                    bottom: 5.h,
                                    left: 20.w,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(8.r),
                                          boxShadow: const [
                                            BoxShadow(
                                              color: Colors.black26,
                                              blurRadius: 1,
                                              spreadRadius: 0.5,
                                            )
                                          ]),
                                      width: 80.w,
                                      height: 35.h,
                                      alignment: Alignment.center,
                                      child: Text(
                                        'نمره',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18.r,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    )),
                                Positioned(
                                    bottom: 5.h,
                                    right: 20.w,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(8.r),
                                          boxShadow: const [
                                            BoxShadow(
                                              color: Colors.black26,
                                              blurRadius: 1,
                                              spreadRadius: 0.5,
                                            )
                                          ]),
                                      width: 80.w,
                                      height: 35.h,
                                      alignment: Alignment.center,
                                      child: Text(
                                        'تاریخ',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18.r,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    )),
                              ],
                            ),
                          ),
                          toolbarHeight: 80.h,
                          leadingWidth: 0,
                          floating: false,
                          pinned: true,
                          titleSpacing: 0,
                          leading: const SizedBox(),
                        );
                      } else {
                        return SliverList(
                          delegate: SliverChildBuilderDelegate(
                            (context, sindex) {
                              return Padding(
                                padding: EdgeInsets.only(top: 8.0.h),
                                child: Container(
                                  width: 0.9.sw,
                                  height: 55.h,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(5.r),
                                      boxShadow: const [
                                        BoxShadow(
                                            color: Colors.black38,
                                            blurRadius: 0.5,
                                            spreadRadius: 0.1,
                                            offset: Offset(0.5, 0.5))
                                      ]),
                                  alignment: Alignment.center,
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 26.r),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 16.0),
                                        child: Text(
                                          scoreState.scores
                                              .where((element) =>
                                                  element.courseName ==
                                                  (scoreState.scores
                                                      .map((e) => e.courseName)
                                                      .toList()[(index) ~/ 2]))
                                              .toList()[sindex]
                                              .grade
                                              .toStringAsFixed(1),
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 18.r),
                                        ),
                                      ),
                                      Text(
                                        DateTime.now()
                                            .toFancyString()
                                            .substring(
                                                0,
                                                DateTime.now()
                                                    .toFancyString()
                                                    .lastIndexOf(' ')),
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 18.r),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                            childCount: scoreState.scores
                                .where((element) =>
                                    element.courseName ==
                                    (scoreState.scores
                                        .map((e) => e.courseName)
                                        .toList()[(index) ~/ 2]))
                                .length,
                          ),
                        );
                      }
                    }),
                  ),
                );
              } else {
                return SizedBox(
                  width: 1.sw,
                  height: 0.8.sh,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          width: 0.95.sw,
                          height: 0.5.sh,
                          child: Padding(
                            padding: EdgeInsets.all(54.0.r),
                            child: SvgPicture.asset(
                              'assets/empty.svg',
                            ),
                          ),
                        ),
                        Text(
                          'امتحانی وجود ندارد\nبرای اضافه کردن بر روی + بزنید',
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.w800, fontSize: 18.r),
                        )
                      ],
                    ),
                  ),
                );
              }
            }
          },
        ),
      ),
    );
  }
}
