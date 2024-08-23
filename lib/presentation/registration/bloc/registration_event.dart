part of 'registration_bloc.dart';

@freezed
class RegistrationEvent with _$RegistrationEvent {
  const factory RegistrationEvent.onLoad() = _OnLoad;
  const factory RegistrationEvent.onClickedNewRegistration() = _OnClickedNewRegistration;
  const factory RegistrationEvent.onCancelRegistration() = _OnCancelRegistration;
}