import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'homescreen_event.dart';
part 'homescreen_state.dart';
part 'homescreen_bloc.freezed.dart';

class HomescreenBloc extends Bloc<HomescreenEvent, HomescreenState> {
  HomescreenBloc() : super(const HomescreenState.initial()) {
    on<HomescreenEvent>((event, emit) {});
  }
}
