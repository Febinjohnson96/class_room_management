part of 'homescreen_bloc.dart';

@freezed
class HomescreenEvent with _$HomescreenEvent {
  const factory HomescreenEvent.onLoad() = _OnLoad;
  const factory HomescreenEvent.onClickedButtons(String? routeName)= _OnClickedButtons; 
}