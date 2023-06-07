import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:my_school/src/config/utils/function_helper.dart';
import 'package:my_school/src/features/auth/domain/models/otp_handshake_response.dart';
import 'package:my_school/src/features/school/domain/usecase/get_schools_usecase.dart';
import 'package:my_school/src/features/core/models/tuple.dart' as tuple;
import 'package:my_school/src/injectable/injectable.dart';

part 'school_state.dart';
part 'school_event.dart';
part 'school_bloc.freezed.dart';

@lazySingleton
class SchoolBloc extends Bloc<SchoolEvent, SchoolState> {
  final GetSchoolsUseCase _getSchoolsUseCase;
  SchoolBloc(this._getSchoolsUseCase) : super(const SchoolState.idle()) {
    on<_GetSchools>(_onGetSchools);

    add(const _GetSchools());
  }
  @override
  void onEvent(SchoolEvent event) {
    FunctionHelper()
        .logMessage('>>>>> Schools Bloc event: ${event.toString()}');
    super.onEvent(event);
  }

  FutureOr<void> _onGetSchools(
      _GetSchools event, Emitter<SchoolState> emit) async {
    emit(state.copyWith(isLoading: true));
    await _getSchoolsUseCase
        .call(
          param: tuple.Tuple1(getIt.get<OtpHandshakeResponse>().phoneNumber),
        )
        .then(
          (value) => value.fold(
            (l) => emit(state.copyWith(isLoading: false)),
            (r) => emit(state.copyWith(data: r.classe, isLoading: false)),
          ),
        );
  }
}
