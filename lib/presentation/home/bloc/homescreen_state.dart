part of 'homescreen_bloc.dart';

@freezed
class HomescreenState with _$HomescreenState {
  const factory HomescreenState.initial() = _Initial;
  const factory HomescreenState.onLoadState(
      {required List<HomeButtonModel> buttons}) = _OnLoadState;
}
