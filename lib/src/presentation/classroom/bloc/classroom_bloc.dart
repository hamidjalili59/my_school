import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:my_school/src/features/auth/domain/models/otp_handshake_response.dart';
import 'package:my_school/src/features/classroom/domain/models/classroom_get_response.dart';
import 'package:my_school/src/features/classroom/domain/use_cases/add_classroom_use_case.dart';
import 'package:my_school/src/features/classroom/domain/use_cases/get_classrooms_use_case.dart';
import 'package:my_school/src/features/core/models/tuple.dart' as tuple;
import 'package:my_school/src/config/utils/function_helper.dart';
import 'package:my_school/src/features/classroom/domain/models/classroom_model.dart';
import 'package:my_school/src/injectable/injectable.dart';

part 'classroom_state.dart';
part 'classroom_event.dart';
part 'classroom_bloc.freezed.dart';

@lazySingleton
class ClassroomBloc extends Bloc<ClassroomEvent, ClassroomState> {
  final GetClassroomsUseCase _getClassroomsUseCase;
  final AddClassroomUseCase _addClassroomUseCase;
  ClassroomBloc(this._getClassroomsUseCase, this._addClassroomUseCase)
      : super(const ClassroomState.idle()) {
    on<_ChangePages>(_onChangePage);
    on<_GetClasses>(_onGetClasses);
    on<_CreateClasses>(_onCreateClasses);
    add(const ClassroomEvent.getClasses());
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

  FutureOr<void> _onGetClasses(
      _GetClasses event, Emitter<ClassroomState> emit) async {
    emit(const ClassroomState.idle(
      isLoading: true,
    ));
    await _getClassroomsUseCase
        .call(
          param: tuple.Tuple1<int>(
            int.parse(getIt.get<OtpHandshakeResponse>().token),
          ),
        )
        .then(
          (value) => value.fold(
            (l) => emit(ClassroomState.idle(
              classes: getIt.isRegistered<ClassroomGetResponse>()
                  ? getIt.get<ClassroomGetResponse>().classrooms
                  : [],
              isLoading: false,
            )),
            (r) {
              if (!getIt.isRegistered<ClassroomGetResponse>()) {
                getIt.registerSingleton<ClassroomGetResponse>(r);
              } else {
                getIt.unregister<ClassroomGetResponse>();
                getIt.registerSingleton<ClassroomGetResponse>(r);
              }
              emit(ClassroomState.idle(
                classes: r.classrooms,
                isLoading: false,
              ));
            },
          ),
        );
  }

  FutureOr<void> _onCreateClasses(
      _CreateClasses event, Emitter<ClassroomState> emit) async {
    emit(ClassroomState.idle(
      isLoading: true,
      classes: getIt.get<ClassroomGetResponse>().classrooms,
    ));
    await _addClassroomUseCase
        .call(
          param: tuple.Tuple1<Classroom>(
            Classroom(0, int.parse(getIt.get<OtpHandshakeResponse>().token),
                event.className),
          ),
        )
        .then((value) => value.fold(
              (l) => print,
              (r) {
                List<Classroom> tempClasses =
                    getIt.get<ClassroomGetResponse>().classrooms.toList();
                tempClasses.add(r.classroom);
                emit(ClassroomState.idle(
                  isLoading: false,
                  classes: tempClasses,
                ));
              },
            ));
  }
}
