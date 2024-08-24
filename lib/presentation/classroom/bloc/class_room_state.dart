part of 'class_room_bloc.dart';

@freezed
class ClassRoomState with _$ClassRoomState {
  const factory ClassRoomState.initial() = _Initial;

  const factory ClassRoomState.onLoadState(
      {required List<ClassRoomModel> classRooms}) = _OnLoadState;
}
