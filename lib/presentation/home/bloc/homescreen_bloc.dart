import 'package:bloc/bloc.dart';
import 'package:class_room_management/domain/model/home_button_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'homescreen_event.dart';
part 'homescreen_state.dart';
part 'homescreen_bloc.freezed.dart';

class HomescreenBloc extends Bloc<HomescreenEvent, HomescreenState> {
  HomescreenBloc() : super(const HomescreenState.initial()) {
    on<_OnLoad>(onLoadEvent);
  }

  // ignore: library_private_types_in_public_api
  void onLoadEvent(_OnLoad event, Emitter<HomescreenState> emit) {
    List<HomeButtonModel> homeButtons = HomeButtonModel().homeButtons;
    emit(HomescreenState.onLoadState(buttons: homeButtons));
  }
}
