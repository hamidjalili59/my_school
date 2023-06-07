import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_school/src/config/constants/general_constants.dart';
import 'package:my_school/src/features/auth/domain/models/otp_handshake_response.dart';
import 'package:my_school/src/injectable/injectable.dart';
import 'package:my_school/src/presentation/auth/bloc/auth_bloc.dart';
import 'package:my_school/src/presentation/auth/pages/user_authentication_page.dart';
import 'package:my_school/src/presentation/auth/pages/verify_code_page.dart';
import 'package:my_school/src/presentation/core/widgets/loading_widget.dart';
import 'package:my_school/src/presentation/school/bloc/school/school_bloc.dart';

class AuthPage extends StatelessWidget {
  AuthPage({super.key});
  final AuthBloc bloc = getIt.get<AuthBloc>();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<SchoolBloc>(
          create: (_) => getIt.get<SchoolBloc>(),
        ),
        BlocProvider<AuthBloc>(
          create: (_) => bloc,
        ),
      ],
      child: SafeArea(
        child: Scaffold(
          body: BlocBuilder<AuthBloc, AuthState>(
            builder: (context, state) {
              return state.maybeWhen(
                otpHandshakeSuccess: (o) {
                  bloc.add(
                    AuthEvent.cacheAuthData(
                      OtpHandshakeResponse(
                        token: o.token,
                        typeOfUser: o.typeOfUser,
                        phoneNumber: o.phoneNumber,
                      ),
                    ),
                  );
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
                                child: UserAuthenticationPage(bloc: bloc),
                              ),
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
                  bloc.add(
                    const AuthEvent.resetIdel(),
                  );
                  return Stack(
                    children: [
                      Positioned.fill(
                        child: SizedBox(
                          width: 1.sw,
                          height: 1.sh,
                          child: UserAuthenticationPage(bloc: bloc),
                        ),
                      ),
                    ],
                  );
                },
                orElse: () {
                  bloc.add(
                    const AuthEvent.resetIdel(),
                  );
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
                          child: UserAuthenticationPage(bloc: bloc),
                        ),
                        SizedBox(height: 0.05.sh),
                        Material(
                          color: GeneralConstants.backgroundColor,
                          borderRadius: BorderRadius.circular(8.r),
                          child: InkWell(
                            splashColor:
                                const Color.fromARGB(255, 141, 108, 159),
                            borderRadius: BorderRadius.circular(8.r),
                            onTap: () {},
                            child: Container(
                              color: Colors.red,
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
      ),
    );
  }
}
