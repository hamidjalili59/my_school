import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_school/src/config/constants/png_assets.dart';
import 'package:my_school/src/config/routes/router.dart';
import 'package:my_school/src/injectable/injectable.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 4)).whenComplete(() {
      getIt.get<AppRouter>().pushNamed('/auth');
    });
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.white,
          width: 1.sw,
          height: 1.sh,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                width: 0.66.sw,
                child: Image.asset(PngAssets.schoolAppIcon),
              ),
              const SizedBox(
                height: 5,
                width: 100,
                child: LinearProgressIndicator(
                  color: Color.fromARGB(255, 141, 108, 159),
                  valueColor: AlwaysStoppedAnimation<Color>(
                      Color.fromARGB(255, 141, 108, 159)),
                  backgroundColor: Color.fromARGB(255, 250, 239, 222),
                ),
              ),
              const SizedBox(
                height: 45,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
