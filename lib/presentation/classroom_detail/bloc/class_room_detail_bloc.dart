import 'package:bloc/bloc.dart';
import 'package:class_room_management/domain/model/classroom/class_room_model.dart';
import 'package:class_room_management/domain/model/subject_model/subject_model.dart';
import 'package:class_room_management/domain/repository/subject_repo/subject_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'class_room_detail_event.dart';
part 'class_room_detail_state.dart';
part 'class_room_detail_bloc.freezed.dart';

class ClassRoomDetailBloc
    extends Bloc<ClassRoomDetailEvent, ClassRoomDetailState> {
  final SubjectRepo subjectRepo;
  final ClassRoomModel classRoom;
  ClassRoomDetailBloc({required this.subjectRepo, required this.classRoom})
      : super(const ClassRoomDetailState.initial()) {
    on<_OnLoad>(_onLoadEvent);
  }

  void _onLoadEvent(_OnLoad event, Emitter<ClassRoomDetailState> emit) async {
    final subjects = await subjectRepo.getSubjectList();
    emit(ClassRoomDetailState.onLoadState(
        subjects: subjects, classRoom: classRoom));
  }
}
