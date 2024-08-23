import 'package:bloc/bloc.dart';
import 'package:class_room_management/domain/model/registration_model/registration_model.dart';
import 'package:class_room_management/domain/model/student/student_model.dart';
import 'package:class_room_management/domain/repository/registration_repo/registration_repo.dart';
import 'package:class_room_management/domain/repository/student_repo/student_repo.dart';
import 'package:class_room_management/utils/logger/app_logger.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'registration_event.dart';
part 'registration_state.dart';
part 'registration_bloc.freezed.dart';

class RegistrationBloc extends Bloc<RegistrationEvent, RegistrationState> {
  final RegistrationRepo registrationRepo;
  final StudentRepo studentRepo;
  RegistrationBloc({required this.registrationRepo, required this.studentRepo})
      : super(const RegistrationState.initial()) {
    on<_OnLoad>(_onLoadEvent);
    on<_OnClickedNewRegistration>(_onClickedNewRegistration);
    on<_OnCancelRegistration>(_onCancelRegistration);
  }

  void _onLoadEvent(_OnLoad event, Emitter<RegistrationState> emit) async {
    AppLogger.warninglog("Calling warninglog");
    final registrationList = await registrationRepo.getregistrationList();
    final studentList = await studentRepo.getStudentList();
    emit(RegistrationState.onLoadState(registrationList: registrationList,studentList: studentList));
  }

  void _onClickedNewRegistration(
      _OnClickedNewRegistration event, Emitter<RegistrationState> emit) {
    AppLogger.infolog("clicked new registration");
    emit(const RegistrationState.newRegistration(isNewRegistration: true));
  }

  void _onCancelRegistration(
      _OnCancelRegistration event, Emitter<RegistrationState> emit) {
    AppLogger.infolog("clicked cancel registration");
    emit(const RegistrationState.newRegistration(isNewRegistration: false));
  }
}
