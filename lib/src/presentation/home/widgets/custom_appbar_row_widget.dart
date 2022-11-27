import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_school/src/config/constants/general_constants.dart';
import 'package:my_school/src/presentation/home/bloc/home_bloc.dart';

class CustomRowButtonWidget extends StatelessWidget {
  const CustomRowButtonWidget({
    Key? key,
    required this.title,
    required this.indexName,
    required this.currentIndexName,
    required this.bloc,
  }) : super(key: key);
  final String title;
  final String indexName;
  final String currentIndexName;
  final HomeBloc bloc;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.0.r, vertical: 8.h),
      child: InkWell(
        onTap: () {
          bloc.add(HomeEvent.changePages(indexName));
        },
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: currentIndexName == indexName
                ? const Color.fromARGB(255, 46, 64, 64)
                : GeneralConstants.backgroundColor,
            borderRadius: BorderRadius.circular(8.r),
          ),
          width: 95.w,
          height: 35.h,
          child: Text(
            title,
            style: TextStyle(
              color:
                  currentIndexName == indexName ? Colors.white : Colors.black87,
              fontSize: 18.r,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      ),
    );
  }
}
