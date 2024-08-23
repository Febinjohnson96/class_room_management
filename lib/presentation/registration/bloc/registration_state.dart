part of 'registration_bloc.dart';

@freezed
class RegistrationState with _$RegistrationState {
  const factory RegistrationState.initial() = _Initial;
  const factory RegistrationState.onLoadState(
      {required List<RegistrationModel> registrationList}) = _OnLoadState;
}
