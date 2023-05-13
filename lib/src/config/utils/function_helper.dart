import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:logger/logger.dart';
import 'package:my_school/src/config/routes/router.dart';
import 'package:my_school/src/injectable/injectable.dart';
import 'package:ndialog/ndialog.dart';

class FunctionHelper {
  static final FunctionHelper _singleton = FunctionHelper._();

  factory FunctionHelper() => _singleton;

  FunctionHelper._();
  // make one instance of Logger Class
  Logger logger = Logger();

  void logMessage(String message) {
    logger.i(message);
  }

// funtion for showing ErrorDetails
  void logErrorDetailMessage(Object errorExep,
      {String? libraryName, String bodyMessage = ''}) {
    FlutterErrorDetails(
      exception: errorExep,
      library: libraryName,
      context: ErrorSummary(bodyMessage),
    );
  }

  void removeDialog(String type, void Function()? onPressed) {
    NDialog(
      title: Text(
        'پاک کردن $type',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 21.r, fontWeight: FontWeight.w900),
      ),
      content: Container(
        padding: EdgeInsets.symmetric(horizontal: 5.w),
        alignment: Alignment.center,
        width: 0.35.sw,
        height: 0.08.sh,
        child: Text(
          'با حذف $type تمامی محتویات مربوط به آن حذف میشود',
          style: TextStyle(fontSize: 16.r, fontWeight: FontWeight.w500),
          textAlign: TextAlign.center,
        ),
      ),
      actions: [
        MaterialButton(
          onPressed: onPressed,
          child: Text(
            'تایید',
            style: TextStyle(fontSize: 14.r, fontWeight: FontWeight.w300),
          ),
        ),
        MaterialButton(
          onPressed: () => getIt.get<AppRouter>().pop(),
          child: Text(
            'لغو',
            style: TextStyle(fontSize: 14.r, fontWeight: FontWeight.w300),
          ),
        ),
      ],
    ).show(getIt.get<AppRouter>().navigatorKey.currentContext!);
  }

  void displaySnackBar({
    required String message,
    bool isFailureMessage = false,
  }) {
    BuildContext context = getIt.get<AppRouter>().navigatorKey.currentContext!;
    final snackBar = SnackBar(
      content: Text(
        message.isNotEmpty ? message : 'Empty',
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.white70, fontWeight: FontWeight.bold, fontSize: 14.r),
      ),
      backgroundColor: isFailureMessage ? Colors.redAccent : Colors.greenAccent,
    );

    ScaffoldMessenger.of(context)
      ..clearSnackBars()
      ..showSnackBar(snackBar);
  }
}
