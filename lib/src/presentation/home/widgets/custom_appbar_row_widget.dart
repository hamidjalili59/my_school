import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_school/src/config/constants/general_constants.dart';
import 'package:my_school/src/features/home/domain/models/appbar_page_type.dart';
import 'package:my_school/src/presentation/home/bloc/home_bloc.dart';

class CustomRowButtonWidget extends StatelessWidget {
  const CustomRowButtonWidget({
    Key? key,
    required this.title,
    required this.indexType,
    required this.currentIndexType,
    required this.bloc,
  }) : super(key: key);
  final String title;
  final AppbarPageType indexType;
  final AppbarPageType currentIndexType;
  final HomeBloc bloc;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.0.r, vertical: 8.h),
      child: InkWell(
        onTap: () {
          bloc.add(HomeEvent.changePages(indexType));
        },
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: currentIndexType == indexType
                ? const Color.fromARGB(255, 46, 64, 64)
                : GeneralConstants.backgroundColor,
            borderRadius: BorderRadius.circular(8.r),
          ),
          child: Text(
            title,
            style: TextStyle(
              color:
                  currentIndexType == indexType ? Colors.white : Colors.black87,
              fontSize: ScreenUtil().screenWidth > 340 ? 14.r : 9.r,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      ),
    );
  }
}
