import 'package:bloc/bloc.dart';
import 'package:class_room_management/domain/model/registration_model/registration_model.dart';
import 'package:class_room_management/domain/repository/registration_repo/registration_repo.dart';
import 'package:class_room_management/utils/logger/app_logger.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'registration_event.dart';
part 'registration_state.dart';
part 'registration_bloc.freezed.dart';

class RegistrationBloc extends Bloc<RegistrationEvent, RegistrationState> {
  final RegistrationRepo registrationRepo;
  RegistrationBloc({required this.registrationRepo})
      : super(const RegistrationState.initial()) {
    on<_OnLoad>(_onLoadEvent);
  }

  void _onLoadEvent(_OnLoad event, Emitter<RegistrationState> emit) async {
    AppLogger.warninglog("Calling warninglog");
    final registrationList = await registrationRepo.getregistrationList();
    emit(RegistrationState.onLoadState(registrationList: registrationList));
  }
}
