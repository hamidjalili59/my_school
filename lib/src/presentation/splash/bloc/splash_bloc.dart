// ignore_for_file: depend_on_referenced_packages

import 'dart:async';

import 'package:my_school/src/config/constants/general_constants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:my_school/src/config/routes/router.dart';
import 'package:my_school/src/config/utils/function_helper.dart';
import 'package:my_school/src/features/auth/domain/failures/auth_failure.dart';
import 'package:my_school/src/features/auth/domain/models/auth_types.dart';
import 'package:my_school/src/features/auth/domain/models/otp_handshake_response.dart';
import 'package:my_school/src/injectable/injectable.dart';
// import 'package:my_school/src/features/core/models/tuple.dart' as tuple;
import 'package:my_school/src/features/auth/domain/use_cases/get_cached_auth_data_use_case.dart';
import 'package:injectable/injectable.dart';

part 'splash_bloc.freezed.dart';
part 'splash_event.dart';
part 'splash_state.dart';

@injectable
class SplashBloc extends Bloc<SplashEvent, SplashState> {
  final GetCachedAuthDataUseCase _getCachedAuthDataUseCase;
  final AppRouter appRoute = getIt.get<AppRouter>();
  SplashBloc(
    this._getCachedAuthDataUseCase,
  ) : super(const _LoadInProgress()) {
    on<_GetClientData>(_getClientData);
    on<_TokenIsExist>(_jwtIsExist);
    add(const SplashEvent.tokenIsExist());
  }
  @override
  void onEvent(SplashEvent event) {
    FunctionHelper().logMessage('>>>>> Splash Bloc event: ${event.toString()}');
    super.onEvent(event);
  }

  // Future<void> _showSchoolModal() async {
  //   return await showModalBottomSheet<void>(
  //     backgroundColor: Colors.transparent,
  //     isDismissible: false,
  //     context: appRoute.navigatorKey.currentContext!,
  //     constraints: BoxConstraints(minHeight: 0.15.sh, maxHeight: 0.7.sh),
  //     builder: (context) {
  //       return Padding(
  //         padding: EdgeInsets.symmetric(horizontal: 26.0.w),
  //         child: Container(
  //           decoration: BoxDecoration(
  //               color: Colors.white54,
  //               borderRadius: BorderRadius.circular(16.r)),
  //           child: Padding(
  //             padding: EdgeInsets.all(8.0.r),
  //             child: Column(
  //               children: [
  //                 Flexible(
  //                   flex: 1,
  //                   child: Padding(
  //                     padding: EdgeInsets.all(16.0.r),
  //                     child: Container(
  //                       alignment: Alignment.center,
  //                       width: 0.5.sw,
  //                       height: 55,
  //                       decoration: BoxDecoration(
  //                         color: Colors.white70,
  //                         borderRadius: BorderRadius.circular(8.r),
  //                       ),
  //                       child: Text(
  //                         'مدرسه های من',
  //                         style: TextStyle(
  //                             color: Colors.black,
  //                             fontSize: 18.r,
  //                             fontWeight: FontWeight.bold),
  //                       ),
  //                     ),
  //                   ),
  //                 ),
  //                 Flexible(
  //                   flex: 5,
  //                   child: ListView.builder(
  //                     itemCount: 4,
  //                     itemExtent: 80.h,
  //                     shrinkWrap: true,
  //                     itemBuilder: (context, index) {
  //                       return Padding(
  //                         padding:
  //                             EdgeInsets.only(bottom: index < 3 ? 8.0.h : 0),
  //                         child: InkWell(
  //                           onTap: () {
  //                             GeneralConstants.userType = UserType.admin;
  //                             appRoute.replaceNamed('/home_page');
  //                           },
  //                           child: SchoolsCardWidget(title: '1000$index'),
  //                         ),
  //                       );
  //                     },
  //                   ),
  //                 ),
  //               ],
  //             ),
  //           ),
  //         ),
  //       );
  //     },
  //   );
  // }

  FutureOr<void> _getClientData(
    _GetClientData event,
    Emitter<SplashState> emit,
  ) async {
    GeneralConstants.jwt = event.token.token;
    emit(const _LoadInProgress());
    try {
      if (event.token.typeOfUser == 'principal') {
        GeneralConstants.userType = UserType.admin;
        appRoute.replaceNamed('/home_page');
      } else if (event.token.typeOfUser == 'teacher') {
        GeneralConstants.userType = UserType.teacher;
        // await _showSchoolModal();
      } else {
        GeneralConstants.userType = UserType.parent;
        appRoute.replaceNamed('/home_page');
        // await _showSchoolModal();
      }
    } catch (e) {
      FunctionHelper().logErrorDetailMessage(
        e,
        libraryName: 'loginError',
        bodyMessage: 'check your login details',
      );
      emit(_Failure(message: e.toString()));
    }
  }

  // __

  FutureOr<void> _jwtIsExist(
    _TokenIsExist event,
    Emitter<SplashState> emit,
  ) async {
    emit(const _LoadInProgress());
    try {
      final getCacheResult = await _getCachedAuthDataUseCase();
      await Future.delayed(const Duration(seconds: 1));
      getCacheResult.fold(
        (l) {
          emit(_Failure(failure: l));
        },
        (r) {
          if (r == null) {
            appRoute.pushNamed('/auth');
            return emit(const _Failure(failure: AuthFailure.nullParam()));
          }
          emit(_JwtExist(r));
          if (!getIt.isRegistered<OtpHandshakeResponse>()) {
            getIt.registerSingleton<OtpHandshakeResponse>(r);
          }
        },
      );
    } catch (e) {
      FunctionHelper().logErrorDetailMessage(
        e,
        libraryName: 'loginError',
        bodyMessage: 'check your login details',
      );
      emit(_Failure(message: e.toString()));
    }
  }
}
