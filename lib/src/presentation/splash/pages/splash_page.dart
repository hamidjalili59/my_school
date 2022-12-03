import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_school/src/config/constants/png_assets.dart';
import 'package:my_school/src/config/routes/router.dart';
import 'package:my_school/src/injectable/injectable.dart';
import 'package:my_school/src/presentation/splash/bloc/splash_bloc.dart';

class SplashPage extends StatelessWidget {
  SplashPage({super.key});
  final SplashBloc _splashBloc = getIt.get<SplashBloc>();
  final AppRouter _appRoute = getIt.get<AppRouter>();

  @override
  Widget build(BuildContext context) {
    if (getIt.get<AppRouter>().currentPath == '/splash') {
      _splashBloc.add(const SplashEvent.tokenIsExist());
    }
    return SafeArea(
      child: Scaffold(
        body: BlocProvider<SplashBloc>(
          create: (__) => _splashBloc,
          child: BlocListener<SplashBloc, SplashState>(
            listener: (context, state) {
              if (getIt.get<AppRouter>().currentPath != '/splash_page') {
                return;
              }
              state.maybeWhen(
                failure: (f, m) {
                  _appRoute.pushNamed('/intro_page');
                },
                jwtIsNotExp: (devicesList) {
                  _appRoute.pushNamed('/home_page');
                },
                jwtExist: (r) {
                  _splashBloc.add(SplashEvent.getClientData(r));
                },
                loadInProgress: () {},
                orElse: () {},
              );
            },
            child: SizedBox(
              width: 1.sw,
              height: 1.sh,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 0.95.sw,
                    height: 0.4.sh,
                    child: Image(
                      image: AssetImage(PngAssets.schoolAppIcon),
                      alignment: Alignment.center,
                      fit: BoxFit.fitWidth,
                      height: 0.4.sh,
                    ),
                  ),
                  SizedBox(height: 20.h),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(36.r),
                    child: SizedBox(
                      width: 0.3.sw,
                      height: 2.h,
                      child: const LinearProgressIndicator(
                        color: Color.fromARGB(255, 142, 226, 109),
                        backgroundColor: Color.fromARGB(255, 54, 47, 47),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
