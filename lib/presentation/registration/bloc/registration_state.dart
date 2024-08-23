part of 'registration_bloc.dart';

@freezed
class RegistrationState with _$RegistrationState {
  const factory RegistrationState.initial() = _Initial;
  const factory RegistrationState.onLoadState({
    required List<RegistrationModel> registrationList,
    required List<StudentModel> studentList,
    required List<SubjectModel> subjectList,
  }) = _OnLoadState;
  const factory RegistrationState.newRegistration(
      {required bool isNewRegistration}) = _NewRegistration;
}
