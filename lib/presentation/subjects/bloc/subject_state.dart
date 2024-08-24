part of 'subject_bloc.dart';

@freezed
class SubjectState with _$SubjectState {
  const factory SubjectState.initial() = _Initial;
  const factory SubjectState.onLoadState({
    required List<SubjectModel> subjectList,
  }) = _OnLoadState;
}
