part of 'class_room_detail_bloc.dart';

@freezed
class ClassRoomDetailState with _$ClassRoomDetailState {
  const factory ClassRoomDetailState.initial() = _Initial;
  const factory ClassRoomDetailState.onLoadState({
    required ClassRoomModel classRoom,
    required List<SubjectModel> subjects,
  }) = _OnLoadState;
}
