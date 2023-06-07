// ignore_for_file: unused_element

import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:injectable/injectable.dart';
import 'package:my_school/src/config/constants/general_constants.dart';
import 'package:my_school/src/config/routes/router.dart';
import 'package:my_school/src/config/utils/function_helper.dart';
import 'package:my_school/src/injectable/injectable.dart';
import 'package:ndialog/ndialog.dart';

@injectable
class RequestInterceptor extends Interceptor {
  RequestInterceptor();

  FunctionHelper appHelper = FunctionHelper();

  @override
  Future onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    bool isOnline = false;
    try {
      final result = await InternetAddress.lookup('example.com');
      isOnline = result.isNotEmpty && result[0].rawAddress.isNotEmpty;
    } on SocketException catch (_) {
      isOnline = false;
    }
    if (!isOnline) {
      NDialog(
        title: const Text('اتصال به اینترنت ممکن نیست'),
        content: SizedBox(
          width: 0.5.sw,
          height: 0.3.sh,
          child: Column(
            children: [
              SizedBox(height: 20.h),
              SizedBox(
                width: 0.5.sw,
                height: 100.h,
                child: Text(
                  'نرم افزار برای ارتباط با سرور نیاز به اینترنت دارد لطفا ارتباط خود را با اینترنت چک کنید و دوباره وارد نرم افزار شوید',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.r,
                      fontWeight: FontWeight.normal),
                ),
              ),
              SizedBox(height: 20.h),
              MaterialButton(
                onPressed: () {
                  exit(0);
                },
                height: 45.h,
                minWidth: 85.w,
                color: GeneralConstants.mainColor,
                child: Text(
                  'خروج از اپلیکیشن',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.r,
                  ),
                ),
              ),
            ],
          ),
        ),
      ).show(getIt.get<AppRouter>().navigatorKey.currentContext!,
          dismissable: false);
      return;
    }

    appHelper.logMessage(
      'REQUEST[${options.method}] => PATH: ${options.path}\nRequestData[${options.data}]',
    );
    options.baseUrl = '';
    String token = '';
    if (token.isNotEmpty) {
      options.headers = {
        'Authorization': 'Bearer $token',
      };
    }

    return super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    appHelper.logMessage(
      'RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.path}\nDATA[${response.data}]',
    );
    super.onResponse(response, handler);
  }

  @override
  Future<void> onError(
      DioException err, ErrorInterceptorHandler handler) async {
    appHelper.logMessage(
      'ERROR[${err.response?.statusCode}] => PATH: ${err.requestOptions.path}',
    );

    if (err.response?.statusCode == 401 && err.requestOptions.path != '') {
      // refresh token
      return;
    } else if (err.message!.contains('XMLHttpRequest')) {
      // reject the request
      return;
    }
    super.onError(err, handler);
  }

  // Future<Either<DioException, Response<Map<String, dynamic>>>>
  //     _callRefreshTokenApi() async =>
  // await getIt.get<ApiService>().postMethod<Map<String, dynamic>>(
  // const AuthEndpoints.refreshToken().toPath,
  // option: const ApiServiceOption(),
  // );

  Future<void> _updateToken(String refreshedToken) async {
    if (kIsWeb) {}
  }

  Future<void> _retryLastRequest(
    RequestOptions requestOptions,
    ErrorInterceptorHandler handler,
    String refreshedToken,
  ) async {
    Map<String, dynamic> newHeader = requestOptions.headers;
    newHeader['Authorization'] = "Bearer $refreshedToken";
    await getIt
        .get<Dio>()
        .request(
          '',
          data: requestOptions.data,
          onReceiveProgress: requestOptions.onReceiveProgress,
          queryParameters: requestOptions.queryParameters,
          options: Options(
            headers: newHeader,
            method: requestOptions.method,
            contentType: requestOptions.contentType,
            extra: requestOptions.extra,
          ),
        )
        .then((res) => handler.resolve(res))
        .catchError(
      (e) {
        if (e is DioException) handler.reject(e);
      },
    );
  }
}
