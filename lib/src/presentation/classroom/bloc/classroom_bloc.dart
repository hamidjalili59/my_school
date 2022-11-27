// ignore_for_file: depend_on_referenced_packages

import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:my_school/src/config/utils/function_helper.dart';

part 'classroom_state.dart';
part 'classroom_event.dart';
part 'classroom_bloc.freezed.dart';

@injectable
class ClassroomBloc extends Bloc<ClassroomEvent, ClassroomState> {
  // final AppRouter appRoute = getIt.get<AppRouter>();
  ClassroomBloc() : super(const _CurrentPageIndex(pageState: '')) {
    on<_ChangePages>(_onChangePage);
  }

  @override
  void onEvent(ClassroomEvent event) {
    FunctionHelper()
        .logMessage('>>>>> Classroom Bloc event: ${event.toString()}');
    super.onEvent(event);
  }

  FutureOr<void> _onChangePage(
    _ChangePages event,
    Emitter<ClassroomState> emit,
  ) async {
    emit(_CurrentPageIndex(pageState: event.indexName));
  }
}
