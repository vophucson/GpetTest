part of 'classes_bloc.dart';

abstract class ClassesEvent extends Equatable {
  const ClassesEvent();

  @override
  List<Object> get props => [];
}

class ClassesShowOrOff extends ClassesEvent {
  final int month;
  const ClassesShowOrOff({
    required this.month,
  });
  @override
  List<Object> get props => [month];
}
