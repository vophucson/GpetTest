import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'classes_event.dart';
part 'classes_state.dart';

class ClassesBloc extends Bloc<ClassesEvent, ClassesState> {
  ClassesBloc() : super(const ClassesState(true, true)) {
    on<ClassesShowOrOff>((event, emit) {
      if (event.month == 1) {
        emit(state.copyWith(show1: !state.show1));
      }
      if (event.month == 2) {
        emit(state.copyWith(show2: !state.show2));
      }
    });
  }
}
