import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
part 'classes2_event.dart';
part 'classes2_state.dart';

class Classes2Bloc extends Bloc<Classes2Event, Classes2State> {
  Classes2Bloc() : super(const Classes2State(show: 1)) {
    on<Classes2Event>((event, emit) {
      final newClassesState = Classes2State(show: state.show == 1 ? 0 : 1);
      emit(newClassesState);
    });
  }
}
