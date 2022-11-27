import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:my_school/src/config/constants/lottie_assets.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      width: 1.sw,
      height: 1.sh,
      alignment: Alignment.center,
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
        child: Lottie.asset(LottieAssets.dotLoading,
            alignment: Alignment.center,
            fit: BoxFit.cover,
            width: 1.sw,
            height: 0.2.sh),
      ),
    );
  }
}
