part of 'classes_bloc.dart';

class ClassesState extends Equatable {
  final bool show1;
  final bool show2;
  const ClassesState(
    this.show1,
    this.show2,
  );

  @override
  List<Object> get props => [
        show1,
        show2,
      ];

  ClassesState copyWith({
    bool? show1,
    bool? show2,
  }) {
    return ClassesState(
      show1 ?? this.show1,
      show2 ?? this.show2,
    );
  }
}
