import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_school/src/config/constants/general_constants.dart';
import 'package:my_school/src/config/routes/router.dart';
import 'package:my_school/src/injectable/injectable.dart';

class CustomAppbarWidget extends StatelessWidget {
  const CustomAppbarWidget({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: GeneralConstants.mainColor,
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(20.r),
              bottomLeft: Radius.circular(20.r))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              getIt.get<AppRouter>().pop();
            },
            child: Container(
              width: 0.2.sw,
              height: double.infinity,
              color: Colors.transparent,
              child: Icon(
                Icons.arrow_back_ios_new,
                size: 30.r,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: 0.6.sw,
            color: Colors.transparent,
            child: Text(
              title,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.r,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: 0.2.sw,
            height: double.infinity,
            color: Colors.transparent,
            child: Icon(
              Icons.edit_note_sharp,
              color: Colors.white,
              size: 42.r,
            ),
          ),
        ],
      ),
    );
  }
}
