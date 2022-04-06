part of '../classes_bloc.dart';

class ClassesState extends Equatable {
  final int show;
  const ClassesState({
    required this.show,
  });
  @override
  List<Object?> get props => [show];
}
