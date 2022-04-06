import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'classbloc/classes_event.dart';
part 'classbloc/classes_state.dart';

class ClassesBloc extends Bloc<ClassesEvent, ClassesState> {
  ClassesBloc() : super(const ClassesState(show: 1)) {
    on<ClasssesShowOrOff>((event, emit) {
      final newClassesState = ClassesState(show: state.show == 1 ? 0 : 1);
      emit(newClassesState);
    });
  }
}
