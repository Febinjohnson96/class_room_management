import 'package:bloc/bloc.dart';
import 'package:class_room_management/domain/model/student/student_model.dart';
import 'package:class_room_management/domain/repository/student_repo/student_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'student_event.dart';
part 'student_state.dart';
part 'student_bloc.freezed.dart';

class StudentBloc extends Bloc<StudentEvent, StudentState> {
  final StudentRepo studentRepo;
  StudentBloc({required this.studentRepo})
      : super(const StudentState.initial()) {
    on<_OnLoad>(_onLoadEvent);
  }

  void _onLoadEvent(_OnLoad event, Emitter<StudentState> emit) async {
    final studentList = await studentRepo.getStudentList();
    emit(StudentState.onLoadState(studentList: studentList));
  }
}
