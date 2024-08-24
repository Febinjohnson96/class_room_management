import 'package:bloc/bloc.dart';
import 'package:class_room_management/domain/model/classroom/class_room_model.dart';
import 'package:class_room_management/domain/repository/class_room_repo/class_room_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'class_room_event.dart';
part 'class_room_state.dart';
part 'class_room_bloc.freezed.dart';

class ClassRoomBloc extends Bloc<ClassRoomEvent, ClassRoomState> {
  final ClassRoomRepo classRoomRepo;
  ClassRoomBloc({required this.classRoomRepo}) : super(const ClassRoomState.initial()) {
    on<_OnLoad>(_onLoadEvent);
  }

  void _onLoadEvent(_OnLoad event, Emitter<ClassRoomState> emit) async {
    final classRooms = await classRoomRepo.getClassRoomList();
    emit(ClassRoomState.onLoadState(classRooms: classRooms));
  }
}
