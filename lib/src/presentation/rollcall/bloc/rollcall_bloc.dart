import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'rollcall_state.dart';
part 'rollcall_event.dart';
part 'rollcall_bloc.freezed.dart';

class RollcallBloc extends Bloc<RollcallEvent,RollcallState>{
  RollcallBloc() : super(const RollcallState.initial()){
    
  }
}