part of 'student_bloc.dart';

@freezed
class StudentState with _$StudentState {
  const factory StudentState.initial() = _Initial;
  const factory StudentState.onLoadState({
    required List<StudentModel> studentList,
  }) = _OnLoadState;
}
