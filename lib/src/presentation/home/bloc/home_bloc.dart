// ignore_for_file: depend_on_referenced_packages

import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:my_school/src/config/utils/function_helper.dart';
import 'package:my_school/src/features/home/domain/models/appbar_page_type.dart';

part 'home_state.dart';
part 'home_event.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc()
      : super(const _CurrentPageIndex(pageState: AppbarPageType.classroom)) {
    on<_ChangePages>(_onChangePage);
    add(const HomeEvent.changePages(AppbarPageType.classroom));
  }

  @override
  void onEvent(HomeEvent event) {
    FunctionHelper().logMessage('>>>>> Home Bloc event: ${event.toString()}');
    super.onEvent(event);
  }

  FutureOr<void> _onChangePage(
    _ChangePages event,
    Emitter<HomeState> emit,
  ) async {
    print(event.index.name);
    emit(_CurrentPageIndex(pageState: event.index));
  }
}
