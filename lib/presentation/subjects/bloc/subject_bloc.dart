import 'package:bloc/bloc.dart';
import 'package:class_room_management/domain/model/subject_model/subject_model.dart';
import 'package:class_room_management/domain/repository/subject_repo/subject_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'subject_event.dart';
part 'subject_state.dart';
part 'subject_bloc.freezed.dart';

class SubjectBloc extends Bloc<SubjectEvent, SubjectState> {
  final SubjectRepo subjectRepo;
  SubjectBloc({required this.subjectRepo})
      : super(const SubjectState.initial()) {
    on<_OnLoad>(_onLoadEvent);
  }

  void _onLoadEvent(_OnLoad event, Emitter<SubjectState> emit) async {
    final subjectList = await subjectRepo.getSubjectList();
    emit(SubjectState.onLoadState(subjectList: subjectList));
  }
}
