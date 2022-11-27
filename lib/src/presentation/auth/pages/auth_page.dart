import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_school/src/config/constants/general_constants.dart';
import 'package:my_school/src/injectable/injectable.dart';
import 'package:my_school/src/presentation/auth/bloc/auth_bloc.dart';
import 'package:my_school/src/presentation/auth/pages/user_authentication_page.dart';
import 'package:my_school/src/presentation/auth/pages/verify_code_page.dart';
import 'package:my_school/src/presentation/core/widgets/loading_widget.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    AuthBloc loginBloc = getIt.get<AuthBloc>();
    return BlocProvider(
        create: (_) => loginBloc,
        child: SafeArea(
          child: Scaffold(
            body: BlocBuilder<AuthBloc, AuthState>(
              builder: (context, state) {
                return state.maybeWhen(
                  otpHandshakeSuccess: (o) {
                    return SizedBox(
                      width: 1.sw,
                      height: 1.sh,
                      child: SingleChildScrollView(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 1.sw,
                            height: 0.7.sh,
                            child: VerificationCodePage(),
                          ),
                          SizedBox(height: 0.05.sh),
                        ],
                      )),
                    );
                  },
                  idle: (l) {
                    return Stack(
                      children: [
                        Positioned.fill(
                          child: SizedBox(
                            width: 1.sw,
                            height: 1.sh,
                            child: SingleChildScrollView(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 1.sw,
                                  height: 0.9.sh,
                                  child: UserAuthenticationPage(),
                                ),
                                // SizedBox(height: 0.05.sh),
                                // Material(
                                //   // type: MaterialType.transparency,
                                //   color:
                                //       GeneralConstants.backgroundColor,
                                //   borderRadius: BorderRadius.circular(8.r),

                                //   child: InkWell(
                                //     splashColor: const Color.fromARGB(
                                //         255, 141, 108, 159),
                                //     borderRadius: BorderRadius.circular(8.r),
                                //     onTap: () {
                                //       loginBloc.add(
                                //           const AuthEvent.otpHandshake(
                                //               09361360584));
                                //     },
                                //     child: Container(
                                //       width: 0.45.sw,
                                //       height: 0.06.sh,
                                //       alignment: Alignment.center,
                                //       decoration: BoxDecoration(
                                //         borderRadius:
                                //             BorderRadius.circular(8.r),
                                //       ),
                                //       child: Text(
                                //         'تایید',
                                //         style: TextStyle(
                                //             color: Colors.black38,
                                //             fontSize: 16.r,
                                //             fontWeight: FontWeight.w900),
                                //         textAlign: TextAlign.center,
                                //       ),
                                //     ),
                                //   ),
                                // ),
                                // SizedBox(height: 0.05.sh),
                              ],
                            )),
                          ),
                        ),
                        Positioned.fill(
                            child: l ? const LoadingWidget() : const SizedBox())
                      ],
                    );
                  },
                  failure: (f, s) {
                    return Stack(
                      children: [
                        Positioned.fill(
                          child: SizedBox(
                            width: 1.sw,
                            height: 1.sh,
                            child: SingleChildScrollView(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 1.sw,
                                  height: 0.7.sh,
                                  child: UserAuthenticationPage(),
                                ),
                                // SizedBox(height: 0.05.sh),
                                // Material(
                                //   color:
                                //       GeneralConstants.backgroundColor,
                                //   borderRadius: BorderRadius.circular(8.r),
                                //   child: InkWell(
                                //     splashColor: const Color.fromARGB(
                                //         255, 141, 108, 159),
                                //     borderRadius: BorderRadius.circular(8.r),
                                //     onTap: () {
                                //       loginBloc.add(
                                //         const AuthEvent.otpHandshake(
                                //             09361360584),
                                //       );
                                //     },
                                //     child: Container(
                                //       width: 0.45.sw,
                                //       height: 0.06.sh,
                                //       alignment: Alignment.center,
                                //       decoration: BoxDecoration(
                                //         borderRadius:
                                //             BorderRadius.circular(8.r),
                                //       ),
                                //       child: Text(
                                //         'تایید',
                                //         style: TextStyle(
                                //             color: Colors.black38,
                                //             fontSize: 16.r,
                                //             fontWeight: FontWeight.w900),
                                //         textAlign: TextAlign.center,
                                //       ),
                                //     ),
                                //   ),
                                // ),
                                // SizedBox(height: 0.05.sh),
                              ],
                            )),
                          ),
                        ),
                      ],
                    );
                  },
                  orElse: () {
                    return SizedBox(
                      width: 1.sw,
                      height: 1.sh,
                      child: SingleChildScrollView(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 1.sw,
                            height: 0.7.sh,
                            child: UserAuthenticationPage(),
                          ),
                          SizedBox(height: 0.05.sh),
                          Material(
                            color: GeneralConstants.backgroundColor,
                            borderRadius: BorderRadius.circular(8.r),
                            child: InkWell(
                              splashColor:
                                  const Color.fromARGB(255, 141, 108, 159),
                              borderRadius: BorderRadius.circular(8.r),
                              onTap: () {
                                loginBloc.add(
                                    const AuthEvent.otpHandshake(09361360584));
                              },
                              child: Container(color: Colors.red,
                                width: 0.45.sw,
                                height: 0.06.sh,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.r),
                                ),
                                child: Text(
                                  'تایید',
                                  style: TextStyle(
                                      color: Colors.black38,
                                      fontSize: 16.r,
                                      fontWeight: FontWeight.w900),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 0.05.sh),
                        ],
                      )),
                    );
                  },
                );
              },
            ),
          ),
        ));
  }
}
